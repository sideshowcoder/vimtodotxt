" Vim syntax file
" Language:	TodoTxt
" Maintainer:	Philipp Fehre <philipp.fehre@gmail.com>
" URL: https://github.com/sideshowcoder/vimtodotxt
" Version:	1
" Last Change:  2013-12-30
" Description: Extend vim to handle todo.txt files as described on http://todotxt.com
" License:     BSD

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Define syntax matches
syn match tagTodo "@\S\+"
syn match projectTodo "+\S\+"
syn match prioTodo "(\S)"
syn match doneTodo "^x\s.*$"

" Highlight
let b:current_syntax = "todotxt"

hi def link projectTodo Statement
hi def link tagTodo Type
hi def link prioTodo Special
hi def link doneTodo Comment

