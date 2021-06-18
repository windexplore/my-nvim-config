
"nnoremap k gk
"nnoremap gk k
"nnoremap j gj
"nnoremap gj j

" 普通模式实现移动行
nnoremap <C-Up> ddP 
nnoremap <C-Down> ddp

" 插入模式上下左右
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" 括号自动补全
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i



" Set <LEADER> as <SPACE>
let mapleader=" "
" Save & quit
noremap <LEADER>q :q<CR>
noremap <LEADER>Q :qa<CR>
noremap <LEADER>s :w<CR>
" Space to Tab and Tab to Space
nnoremap <LEADER>tt :%s/    /\t/g
vnoremap <LEADER>tt :s/    /\t/g
nnoremap <LEADER>ts :%s/\t/    /g
vnoremap <LEADER>ts :s/\t/    /g






