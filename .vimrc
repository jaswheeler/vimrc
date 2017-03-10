filetype off
execute pathogen#infect()
set t_Co=256
colorscheme molokai 
syntax on
filetype plugin indent on

" No backwards compat with VI
set nocompatible

" Prevent security exploits
set modelines=0

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set number
set undofile
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

let mapleader = ","

" For searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %


" Long lines 
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

" Show invisable chars
set list
set listchars=tab:▸\ ,eol:¬



" Prevent arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" Leader for Ack
nnoremap <leader>a :Ack

" Make jj the same as escape
inoremap jj <ESC>

" ,w to open new vsplit and occupy
nnoremap <leader>w <C-w>v<C-w>l

" Window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Nerdtree
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" cscope
if has('cscope')
  set cscopetag cscopeverbose

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif
  cnoreabbrev csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help
endif

" Eclim
let g:EclimCompletionMethod = 'omnifunc'
inoremap <C-@> <c-x><c-o>
