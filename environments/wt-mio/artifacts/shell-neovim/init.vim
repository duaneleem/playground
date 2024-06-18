" ===========================================================
" Ensure default behavior for Ctrl+b
" ===========================================================
nnoremap <C-b> <C-b>


" ===========================================================
" Disable Default VIM Mode and Other Settings
" ===========================================================
set nocompatible
filetype off


" ===========================================================
" Check for vim color dir, create if it doesnt exist.
" ===========================================================
if empty(glob('~/.config/nvim/colors/g16.vim'))
  silent !mkdir ~/.config/nvim/colors
  silent !ln -s ${DUANELEEM_GH_PLAYGROUND }/environments/wt-mio/artifacts/shell-neovim/colors/g16.vim ~/.config/nvim/colors/g16.vim
  silent !ln -s ${DUANELEEM_GH_PLAYGROUND }/environments/wt-mio/artifacts/shell-neovim/colors/gRetroWave16.vim ~/.config/nvim/colors/gRetroWave16.vim
endif

if empty(glob('~/.config/nvim/colors/g16.vim'))
  silent !ln -s ${DUANELEEM_GH_PLAYGROUND}/environments/wt-mio/artifacts/shell-neovim/colors/g16.vim ~/.config/nvim/colors/g16.vim
  silent !ln -s ${DUANELEEM_GH_PLAYGROUND}/environments/wt-mio/artifacts/shell-neovim/colors/gRetroWave16.vim ~/.config/nvim/colors/gRetroWave16.vim
endif


" ===========================================================
" Initialize vim-plug
" ===========================================================
call plug#begin('~/.config/nvim/plugged')

" Add plugins here
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'

" barbar
Plug 'nvim-tree/nvim-web-devicons' " OPTIONAL: for file icons
Plug 'lewis6991/gitsigns.nvim' " OPTIONAL: for git status
Plug 'romgrk/barbar.nvim'


call plug#end()


" ===========================================================
" BarBar Settings: BarBar
" ===========================================================
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>


" ===========================================================
" Settings: NERDTree
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


