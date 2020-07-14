" Replace Tab to Spaces
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4

" Keep indentation
set autoindent
" Indentation for Python
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

" Highlight unwanted Spaces and Tabs
set listchars=tab:▸\ ,trail:·
set list

" Enable syntax highlighting
" For nginx.conf highlighting just run: https://gist.github.com/ralavay/c4c7750795ccfd72c2db
filetype plugin on
syntax on
let python_highlight_all = 1
set t_Co=256

" Set file encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8

" vi compatibity
set nocompatible
