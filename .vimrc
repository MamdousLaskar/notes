" Auto-install vim-plug if not already installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" Use vim-plug for plugin management
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'jiangmiao/auto-pairs'         " Auto-close brackets
Plug 'joshdick/onedark.vim'         " One Dark theme
Plug 'preservim/nerdtree'           " File explorer
Plug 'vim-airline/vim-airline'      " Status bar
Plug 'tpope/vim-commentary'         " Easy commenting
Plug 'junegunn/fzf.vim'             " Fuzzy finder (requires fzf)

call plug#end()

" General settings
syntax on                      " Enable syntax highlighting
set number                     " Show line numbers
set relativenumber             " Relative line numbers
set tabstop=4                  " Tab width
set shiftwidth=4               " Indentation width
set expandtab                  " Use spaces instead of tabs
set splitright
set splitbelow
set wrap

" Set leader key to space
let mapleader = " "

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

" Airline configuration
let g:airline#extensions#tabline#enabled = 1
