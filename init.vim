set shiftwidth=4
set relativenumber
set tabstop=4
set expandtab
call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'mfussenegger/nvim-dap'
Plug 'bluz71/vim-moonfly-colors'
Plug 'deoplete-plugins/deoplete-clang'
Plug 'Chiel92/vim-autoformat'
Plug 'jacoborus/tender.vim'
call plug#end()

set termguicolors
syntax enable
colorscheme tender

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
let g:lightline = {'colorscheme': 'moonfly'}
let g:ale_linters = {
    \ 'python': ['pylint'],
    \ 'vim': ['vint'],
    \ 'cpp': ['clang'],
    \ 'c': ['clang']
\}

" custom setting for clangformat
let g:neoformat_cpp_clangformat = {
    \ 'exe': 'clang-format',
    \ 'args': ['--style="{IndentWidth: 4}"']
\}
let g:neoformat_enabled_cpp = ['clangformat']
let g:neoformat_enabled_c = ['clangformat']


