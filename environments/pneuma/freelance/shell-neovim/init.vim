
" ===========================================================
" Ensure default behavior for Ctrl+b
" ===========================================================
nnoremap <C-b> <C-b>


" ===========================================================
" Ensure vim-plug is installed
" ===========================================================
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ===========================================================
" Disable Default VIM Mode and Other Settings
" ===========================================================
set nocompatible
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
" Settings | vim-plug: catppuccin
" ===========================================================
colorscheme catppuccin " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha


" ===========================================================
" Settings | vim-plug: BarBar
" ===========================================================
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>


" ===========================================================
" Settings | vim-plug: NERDTree
" ===========================================================
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


