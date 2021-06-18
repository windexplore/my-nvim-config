syntax enable
syntax on
filetype indent on
" set termguicolors
set smartindent
set termencoding=utf-8
set fileformats=unix
set encoding=utf-8
" set mouse=nv
set mouse=
set number
set tabstop=4
set shiftwidth=4
set showcmd
set noswapfile
"set noexpandtab
set expandtab
set showmatch
"set ruler
set wrap
set noshowmode
set showtabline=1
set smartcase
set notimeout
set ttimeoutlen=0
set lazyredraw
set visualbell
set history=800
set scrolloff=5
set hlsearch
set incsearch
"set cursorline
set list
set listchars=tab:\┆\ ,trail:-
" hi CursorLine ctermbg=darkred ctermfg=white guibg=darkred guifg=white
set viewoptions=cursor,folds,slash,unix
set wildmenu
set wildmode=full
set wildchar=<Tab>
set guicursor=n:block,i:ver1,v:block,r:block,c:block,ci:block,cr:block
set relativenumber
set autoindent
set path=.,/usr/include,/usr/local/include/
set foldmethod=marker
set foldlevelstart=99
set colorcolumn=80
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
let g:mapleader = "\<Space>"


set guicursor= " `:h guicuisor` to see more info


