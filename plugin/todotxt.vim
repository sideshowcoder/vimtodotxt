" File:        todotxt.vim
" Description: Extend vim to handle todo.txt files as described on http://todotxt.com
" Maintainer:  Philipp Fehre <philipp.fehre@gmail.com>
" Version:     1
" Last Change: 2014-01-17
" License:     MIT

if exists("g:loaded_todotxt_plugin")
  finish
endif
let g:loaded_todotxt_plugin = 1

" custom todotxt
if !exists('g:todotxt_config')
  let g:todotxt_config = '$HOME/.todo/config'
end

if !exists('g:todotxt_executable')
  let g:todotxt_executable = 'todo.sh'
end

function! <SID>Archive()
  execute '!'.g:todotxt_executable.' -d'.g:todotxt_config.' archive'
  " reload the buffer
  e
endfunction

function! <SID>Done()
  execute '!'.g:todotxt_executable.' -d'.g:todotxt_config.' do '.line('.')
  " reload the buffer
  e
endfunction

noremap <silent> <Plug>TodoArchive :call <SID>Archive()<CR>
" Create a `TodoArchive` command
command -nargs=0 TodoArchive call <SID>Archive()

noremap <silent> <Plug>TodoDone :call <SID>Done()<CR>
" Create a `TodoDone` command
command -nargs=0 TodoDone call <SID>Done()
