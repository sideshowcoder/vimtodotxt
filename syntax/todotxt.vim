" Vim syntax file
" Language:	TodoTxt
" Maintainer:	Philipp Fehre <philipp.fehre@googlemail.com>
" URL: https://github.com/sideshowcoder/vimtodotxt
" Version:	1
" Last Change:  2011 Aug 17 
" Remark:	http://todotxt.com/ is a command line todo manager originally started by Gina Trapani http://ginatrapani.org/. All todos are managed via a simple structured textfile, todo.txt. 
" Remark: This is a port of the Textmate TodoTXT bundle https://github.com/sideshowcoder/tmTodoTXT

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syn spell toplevel
syn case ignore
syn sync linebreaks=1

let b:current_syntax = "todotxt"

