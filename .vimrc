" Use Vim Plug as the plugin manager
call plug#begin('~/.vim/plugged')

" Dracula color scheme
Plug 'dracula/vim', { 'as': 'dracula' }

" Plugin for auto-closing brackets, quotes, etc.
Plug 'jiangmiao/auto-pairs'

" File explorer
Plug 'preservim/nerdtree'

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
nnoremap <leader>t :vert term<CR>  " Open terminal in a split on the right
nnoremap <leader>n :NERDTreeToggle<CR>     " Toggle NERDTree
nnoremap <leader>a :%y+<CR>                " Copy all

" Set the default color scheme to Dracula
colorscheme dracula

