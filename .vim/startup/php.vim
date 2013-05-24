" Drupal *.{module,install,test,inc,profile,view} files
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.view set filetype=php
augroup END

autocmd FileType php set expandtab
autocmd FileType php let tabstop = 2
autocmd FileType php let shiftwidth = 2
autocmd FileType php set autoindent
autocmd FileType php set smartindent
