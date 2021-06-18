""set t_Co=256


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

" ==================
" Plug
call plug#begin('~/.config/nvim/plug')

Plug 'junegunn/vim-easy-align'
"Plug 'vim-airline/vim-airline'
Plug 'itchyny/lightline.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'honza/vim-snippets'
"Plug 'github.com/SirVer/ultisnips'
" General Highlighter
" Plug 'RRethy/vim-hexokinase', { 'do': 'make hexokinase' }
" Plug 'RRethy/vim-illuminate'
" Python
" Plug 'tmhedberg/SimpylFold', { 'for' :['python', 'vim-plug'] }
" Plug 'Vimjas/vim-python-pep8-indent', { 'for' :['python', 'vim-plug'] }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins', 'for' :['python', 'vim-plug'] }
" Plug 'vim-scripts/indentpython.vim', { 'for' :['python', 'vim-plug'] }
" Plug 'plytophogy/vim-virtualenv', { 'for' :['python', 'vim-plug'] }
" "Plug 'tweekmonster/braceless.vim', { 'for' :['python', 'vim-plug'] }
call plug#end()
" More about Plug


" ==================
" Coc
let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-vimlsp',
    \ 'coc-pyright',
    \ 'coc-actions',
    \ 'coc-snippets',
    \ 'coc-explorer'
\]

    "\ 'coc-jedi',
    "\ 'coc-syntax',
    "\ 'coc-highlight'


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

" Color Schema
colorscheme vscode-dark
exec 'source ' . s:config_dir . '/utils/semshi_patch.vim'

" =================
" Free Memory
unlet s:config_dir
unlet s:config_lst


