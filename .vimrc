scriptencoding utf-8
set encoding=utf-8

set showcmd
set ruler
set incsearch
set wildmenu
set shortmess=aAIsT
set cmdheight=2
set wrap
set number
set list
set listchars=tab:▸\ ,eol:¬
set linebreak
set fileformats=unix,dos,mac
set foldmethod=marker
set laststatus=2
set visualbell t_vb=".
set statusline=%F%m%r%h%w\ %y\ %=[%c,%l](%p%%)
set t_Co=256
set t_AB=[48;5;%dm
set t_AF=[38;5;%dm

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
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'

" Add Highlight search, extra good with the star command *
set incsearch
set hlsearch
syntax on


set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" Spell checking
setlocal spell spelllang=en_us
" Text settings
autocmd BufRead,BufNewFile *.txt set filetype=text
autocmd Filetype text set textwidth=72

" Markdown settings
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.md setlocal formatoptions=nt textwidth=80 wrapmargin=0

" Github settings
autocmd Filetype gitcommit set tw=72
autocmd Filetype gitcommit set wrap

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


" An attempt to break my arrow key habit by unmapping them
for prefix in ['i', 'n', 'v']
	for key in ['<Up>', '<Down>', '<Left>', '<Right>']
		exe prefix . "noremap " . key . " <Nop>"
	endfor
endfor

let fortran_do_enddo=1
let fortran_more_precise=1
let fortran_have_tabs=0

autocmd FileType fortran set expandtab
autocmd FileType fortran set tabstop=2
autocmd FileType fortran set shiftwidth=2
autocmd FileType fortran set softtabstop=2
autocmd FileType fortran set autoindent
autocmd FileType fortran set smartindent


colorscheme hipster
" Set a different color scheme for vimdiffs
if &diff
	colorscheme greens
endif

"hi clear SpellBad
"i SpellBad cterm=underline
