" todotxt filetype file

if exists("did\_load\_filetypes")
 finish
endif
augroup todotxt 
 au! BufRead,BufNewFile todo.txt setfiletype todotxt 
 au! BufRead,BufNewFile done.txt setfiletype todotxt 
 au! BufRead,BufNewFile report.txt setfiletype todotxt 
augroup END

