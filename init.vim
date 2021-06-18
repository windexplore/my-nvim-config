let config_dir = "~/.config/nvim"

let s:config_dir = expand('<sfile>:p:h')
let s:config_lst = [
    \ 'basic',
    \ 'keymap',
    \ 'file',
    \ 'compile',
    \ 'coc'
\ ]

for s:item in s:config_lst
    exec 'source ' . s:config_dir . '/' . s:item . '.vim'
    " exec 'source ' . s:config_dir . 'viml/' . s:item . '.vim'
endfor
colorscheme vscode-dark

" ==================
" Plug
call plug#begin('~/.config/nvim/plug')

Plug 'junegunn/vim-easy-align'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
"Plug 'github.com/SirVer/ultisnips'
call plug#end()
" More about Plug
set t_Co=256



" ==================
" Coc
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-python',
    \ 'coc-actions',
    \ 'coc-snippets',
    \ 'coc-explorer'
\]
" Coc Explorer
nnoremap <space>e :CocCommand explorer<CR>


" =================
" Snippets
imap <C-;> <Plug>(coc-snippets-expand)
vmap <C-e> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-e>'
let g:coc_snippet_prev = '<c-n>'
imap <C-e> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Tom Mao'
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc
" UltiSnips
"let g:UltiSnipsListTrigger = "<c-z>"
"let g:UltiSnipsExpandTrigger = "<c-o>"
"let g:UltiSnipsJumpForwardTrigger = "<c-[>"
"let g:UltiSnipsJumpBackwardTrigger = "<c-]>"



" =================
" Free Memory
unlet s:config_dir
unlet s:config_lst


