" File:        todotxt.vim
" Description: Extend vim to handle todo.txt files as described on http://todotxt.com
" Maintainer:  Philipp Fehre <philipp.fehre@gmail.com>
" Version:     1
" Last Change: 2013-12-30
" License:     BSD

if exists("g:loaded_todotxt_plugin")
  finish
endif
let g:loaded_todotxt_plugin = 1

let s:active= 0

" save off values for later
let s:save_textwidth = ""
if exists("&textwidth")
  let s:save_textwidth = &textwidth
end

let s:save_wrapmargin = ""
if exists("&wrapmargin")
  let s:save_wrapmargin = &wrapmargin
end

let s:save_wrap = ""
if exists("&wrap")
  let s:save_wrap = &wrap
end

function! <SID>TodotxtDeactivate()
  if s:active == 1
    let s:active = 0
    " restore values
    if s:save_textwidth != ""
      exec("set textwidth=" . s:save_textwidth)
    endif
    if s:save_wrapmargin != ""
      exec("set wrapmargin=" . s:save_wrapmargin)
    endif
    if s:save_wrap != ""
      if s:save_wrap == 1
        exec("set wrap")
      else
        exec("set nowrap")
      endif
    endif
  endif
endfunction

function! <SID>TodotxtActivate()
  if s:active == 0
    let s:active = 1

    " make sure no newlines are inserted automatically since the todo.txt format is
    " one todo per line
    set wrap
    set textwidth=0 wrapmargin=0
    set filetype=todotxt
  endif
endfunction

noremap <silent> <Plug>TodotxtDeactivate :call <SID>TodotxtDeactivate()<CR>
" Create a `TodotxtDeactivate` command:
command -nargs=0 TodotxtDeactivate call <SID>TodotxtDeactivate()

" toggle plugin
au! BufRead,BufNewFile todo.txt   :call <SID>TodotxtActivate()
au! BufRead,BufNewFile done.txt   :call <SID>TodotxtActivate()
au! BufRead,BufNewFile report.txt :call <SID>TodotxtActivate()
