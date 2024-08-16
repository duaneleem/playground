" ===========================================================
" Ensure default behavior for Ctrl+b
" ===========================================================
nnoremap <C-b> <C-b>


" ===========================================================
" Disable Default VIM Mode and Other Settings
" ===========================================================
set nocompatible
" set mouse=
filetype off


" ===========================================================
" Initialize vim-plug
" ===========================================================

call plug#begin('~/.config/nvim/plugged')

" Add plugins here
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'

" barbar
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'


call plug#end()


" ===========================================================
" Settings: catppuccin
" ===========================================================
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


" ===========================================================
" Settings: BarBar
" ===========================================================
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>


" ===========================================================
" Settings: NVIM Overrides
" ===========================================================
nnoremap gt :BufferNext<CR>
nnoremap gT :BufferPrevious<CR>


" ===========================================================
" Settings: NERDTree
" ===========================================================
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
nnoremap <C-t> :NERDTreeToggle<CR>


" ===========================================================
" Basic settings
" ===========================================================
set number
set relativenumber
syntax on
set lazyredraw
set noswapfile
set ttyfast
set nohlsearch
set incsearch
set re=0


