" Vim syntax file
" Language:	TodoTxt
" Maintainer:	Philipp Fehre <philipp.fehre@googlemail.com>
" URL: https://github.com/sideshowcoder/vimtodotxt
" Version:	1
" Last Change:  2011 Nov 9 
" Remark:	http://todotxt.com/ is a command line todo manager originally started by Gina Trapani http://ginatrapani.org/. All todos are managed via a simple structured textfile, todo.txt. 
" Remark: This is a port of the Textmate TodoTXT bundle https://github.com/sideshowcoder/tmTodoTXT

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

