" Basic Settings
set nocompatible
syntax enable
set number
set relativenumber
set encoding=utf-8
set hidden
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent
set mouse=a
set splitright
set splitbelow
set cursorline
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set scrolloff=8
set updatetime=300
set timeoutlen=500

" Set comma as leader key
let mapleader = ","

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Plugins
call plug#begin('~/.vim/plugged')
" File explorer
Plug 'preservim/nerdtree'
" Theme
Plug 'morhetz/gruvbox'
" Auto pairs for brackets
Plug 'jiangmiao/auto-pairs'
" Status line
Plug 'vim-airline/vim-airline'
" Git integration
Plug 'tpope/vim-fugitive'
" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" Code completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Comment toggler
Plug 'tpope/vim-commentary'
call plug#end()

" Theme settings
set background=dark
colorscheme gruvbox

" Auto closing brackets (backup in case auto-pairs plugin fails)
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

" Custom shortcuts
" NERDTree
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>f :NERDTreeFind<CR>

" Buffer navigation
nnoremap <leader>h :bprevious<CR>
nnoremap <leader>l :bnext<CR>
nnoremap <leader>q :bdelete<CR>

" Split navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quick save and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>
nnoremap <leader>q :q<CR>

" Clear search highlighting
nnoremap <leader>/ :noh<CR>

" FZF shortcuts
nnoremap <leader>p :Files<CR>
nnoremap <leader>b :Buffers<CR>
nnoremap <leader>g :GFiles<CR>

" Terminal shortcuts
nnoremap <leader>t :term<CR>

" NERDTree settings
let NERDTreeShowHidden=1
let NERDTreeQuitOnOpen=1
let NERDTreeAutoDeleteBuffer=1

" Start NERDTree when Vim starts with a directory argument
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Close Vim if NERDTree is the only window remaining
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif