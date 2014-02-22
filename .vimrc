set showcmd
set ruler
set incsearch
set wildmenu
syntax enable
set shortmess=aAIsT
set cmdheight=2
set wrap
set number
set linebreak
set laststatus=2
set statusline=%F%m%r%h%w\ %y\ %=[%c,%l](%p%%)
"

" Filetype stuff
filetype plugin on
filetype indent on
filetype on

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a single file. This will confuse LaTeX-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" Add Highlight search, extra good with the star command *
set incsearch
set hlsearch
syntax on


set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Spell checking
setlocal spell spelllang=en_us
" Text settings
autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd Filetype text set textwidth=80

" PHP Settings
autocmd Filetype php set textwidth=75
autocmd Filetype php set tags
autocmd FileType php let php_folding=1
autocmd FileType php let php_noShortTags=1
autocmd FileType php let php_parent_error_close=1
autocmd FileType php let php_parent_error_open=1
autocmd FileType php let php_large_files=0
autocmd FileType php let g:php_smart_members=1
autocmd FileType php let g:php_alt_properties=1
autocmd FileType php let g:php_smart_semicolon=1
autocmd FileType php let g:php_alt_construct_parents=1
autocmd FileType php let php_sql_queries=1
autocmd FileType php let php_htmlInStrings=1

autocmd Filetype php set spell
autocmd Filetype php set expandtab
autocmd Filetype php set tabstop=2
autocmd Filetype php set shiftwidth=2
autocmd Filetype php set autoindent
autocmd Filetype php set smartindent
augroup module
  autocmd BufRead,BufNewFile *.module set filetype=php
  autocmd BufRead,BufNewFile *.install set filetype=php
  autocmd BufRead,BufNewFile *.test set filetype=php
  autocmd BufRead,BufNewFile *.inc set filetype=php
  autocmd BufRead,BufNewFile *.profile set filetype=php
  autocmd BufRead,BufNewFile *.view set filetype=php
augroup END

" Python Settings
autocmd FileType python let python_highlight_all=1
autocmd FileType python set expandtab
autocmd FileType python set tabstop=4
autocmd FileType python set shiftwidth=4
autocmd FileType python set softtabstop=4
autocmd FileType python set autoindent
autocmd FileType python set smartindent

" Set a different color scheme for vimdiffs
if &diff
	colorscheme greens
endif

" An attempt to break my arrow key habit by unmapping them
for prefix in ['i', 'n', 'v']
	for key in ['<Up>', '<Down>', '<Left>', '<Right>']
		exe prefix . "noremap " . key . " <Nop>"
	endfor
endfor

let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=1
