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


function! <SID>TodotxtToggle()
  " make sure no newlines are inserted automatically since the todo.txt format is
  " one todo per line
  set wrap
  set textwidth=0 wrapmargin=0
  set filetype=todotxt
endfunction

noremap <silent> <Plug>TodotxtToggle :call <SID>TodotxtToggle()<CR>

" toggle plugin
au! BufRead,BufNewFile todo.txt   :call <SID>TodotxtToggle()
au! BufRead,BufNewFile done.txt   :call <SID>TodotxtToggle()
au! BufRead,BufNewFile report.txt :call <SID>TodotxtToggle()
