" BASIC SETTINGS  ---------------------------------------------------------------- {{{

filetype on
filetype plugin on
filetype indent on
syntax on
let mapleader=" "
set nocompatible
set number relativenumber
set cursorline
set tabstop=4
set expandtab
set ignorecase
set showcmd
set foldmethod=indent
set foldlevel=99
set laststatus=2
set noshowmode
set noeb vb t_vb=
au GUIEnter * set vb t_vb

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

call plug#begin('~/.vim/plugged')
    Plug 'preservim/nerdtree'
    Plug 'vim-syntastic/syntastic'
    Plug 'itchyny/lightline.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
call plug#end()


autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" }}}


" MAPPINGS --------------------------------------------------------------- {{{

nnoremap <leader>/ :Lines<CR>
nnoremap ff :NERDTreeToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" }}}
