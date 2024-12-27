" Use Vim Plug as the plugin manager
call plug#begin('~/.vim/plugged')

" Plugin for auto-closing brackets, quotes, etc.
Plug 'jiangmiao/auto-pairs'

" Other useful plugins
Plug 'tpope/vim-sensible'  " Sensible default settings for Vim
Plug 'scrooloose/nerdtree' " File explorer
Plug 'vim-airline/vim-airline' " Status/tabline
Plug 'morhetz/gruvbox' " Gruvbox color scheme

call plug#end()

" General settings
syntax on                   " Enable syntax highlighting
set number                  " Show line numbers
set relativenumber          " Relative line numbers
set tabstop=4               " Number of spaces in a tab
set shiftwidth=4            " Number of spaces for auto-indent
set expandtab               " Use spaces instead of tabs
set autoindent              " Automatically indent new lines
set cursorline              " Highlight the current line
set background=dark         " Use dark background
set splitright              " Setting The split screen right for Terminal
colorscheme gruvbox         " Use gruvbox color scheme
set clipboard=unnamedplus   " Use system clipboard
set mouse=a                 " Enable mouse support

"leader key
let mapleader = " "
"open terminal
nnoremap <leader>t :vert term<CR>

" Toggle NerdTree
nnoremap <leader>n :NERDTreeToggle<CR>

" Copy all
nnoremap <leader>a :%y+<CR>

" Enable plugins
let g:airline#extensions#tabline#enabled = 1
let g:NERDTreeShowHidden = 1

" Customize AutoPairs settings
let g:AutoPairsMapBS = 1    " Map backspace to delete pair
let g:AutoPairsMapSpace = 1 " Map space to insert pair
