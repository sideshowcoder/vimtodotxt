" todotxt filetype file

if exists("did\_load\_filetypes")
 finish
endif
augroup todotxt
  " make sure no newlines are inserted automatically since the todo.txt format is
  " one todo per line
  set wrap
  set textwidth=0 wrapmargin=0

  " load for the right files
  au! BufRead,BufNewFile todo.txt setfiletype todotxt
  au! BufRead,BufNewFile done.txt setfiletype todotxt
  au! BufRead,BufNewFile report.txt setfiletype todotxt
augroup END

