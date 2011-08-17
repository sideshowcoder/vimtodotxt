" todotxt filetype file

if exists("did\_load\_filetypes")

 finish

endif

augroup todotxt 

 au! BufRead,BufNewFile todo.txt setfiletype todotxt 

augroup END

