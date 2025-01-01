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
set wrap
set textwidth=80
set updatetime=300
set timeoutlen=500

" Set comma as leader key
let mapleader = " "

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
Plug 'joshdick/onedark.vim'
Plug 'rakr/vim-one'
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
set termguicolors
let g:one_allow_italics = 1
colorscheme onedark
let g:airline_theme='onedark'

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
nnoremap <leader>vt :vert term<CR>

" For copying all 
nnoremap <leader>ya :%y+<CR>

" Java-specific shortcuts
" Compile Java file
nnoremap <leader>jc :w <CR>:!javac %<CR>
" Run Java file
nnoremap <leader>jr :!java %:r<CR>
" Compile and run Java file
nnoremap <leader>ja :w <CR>:!javac % && java %:r<CR>
" Open a terminal split below for Java output
nnoremap <leader>jt :below split<CR>:terminal<CR>

" Java autocomplete settings (if using CoC)
autocmd FileType java setlocal omnifunc=javacomplete#Complete

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

" Set specific settings for Java files
autocmd FileType java setlocal expandtab
autocmd FileType java setlocal tabstop=4
autocmd FileType java setlocal softtabstop=4
autocmd FileType java setlocal shiftwidth=4
