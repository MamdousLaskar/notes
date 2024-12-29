" Use Vim Plug as the plugin manager
call plug#begin('~/.vim/plugged')

" Plugin for auto-closing brackets, quotes, etc.
Plug 'jiangmiao/auto-pairs'

" File explorer
Plug 'preservim/nerdtree'

" Gruvbox color scheme
Plug 'morhetz/gruvbox'

call plug#end()

" General settings
syntax on                   " Enable syntax highlighting
filetype plugin indent on   " Automatically detect and set file type
set number                  " Show line numbers
set relativenumber          " Relative line numbers
set tabstop=4               " Number of spaces in a tab
set shiftwidth=4            " Number of spaces for auto-indent
set expandtab               " Use spaces instead of tabs
set autoindent              " Automatically indent new lines
set cursorline              " Highlight the current line
set background=dark         " Use dark background
set splitright              " Split window to the right
set clipboard=unnamedplus   " Use system clipboard
set mouse=a                 " Enable mouse support

" Leader key
let mapleader = " "

" Keybindings
nnoremap <leader>t :vert term<CR>      " Open terminal
nnoremap <leader>n :NERDTreeToggle<CR> " Toggle NerdTree
nnoremap <leader>a :%y+<CR>            " Copy all
nnoremap <leader>r :w<CR>:! javac % && java %:r<CR>  " Compile and run Java programs

" Customize AutoPairs settings
let g:AutoPairsMapBS = 1    " Map backspace to delete pair
let g:AutoPairsMapSpace = 1 " Map space to insert pair

" Set Java-specific settings
autocmd FileType java setlocal tabstop=4 shiftwidth=4 expandtab

" Set the default color scheme to Gruvbox
colorscheme gruvbox

