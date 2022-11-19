" BASIC SETTINGS  ---------------------------------------------------------------- {{{

filetype on
filetype plugin on
filetype indent on
syntax on
let mapleader=" "
set number relativenumber
set cursorline
set tabstop=2
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

call plug#begin()
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'itchyny/lightline.vim'
    Plug 'Soares/base16.nvim'
call plug#end()
colorscheme macintosh

autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" }}}


" MAPPINGS --------------------------------------------------------------- {{{
nmap <C-q> :q<CR>
nmap <silent><leader>/ :Telescope find_files<CR>
imap kk <esc>
imap jj <esc>

nmap <C-j> <C-W><C-J>
nmap <C-k> <C-W><C-K>
nmap <C-l> <C-W><C-L>
nmap <C-h> <C-W><C-H>

nmap <C-n> :tabnew 

set splitbelow
set splitright

" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

set timeoutlen=0

" }}}


" STATUS LINE ------------------------------------------------------------ {{{
let g:rehash256 = 1
let g:lightline = {
      \ 'colorscheme': 'ayu_light'
      \ }
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle

" Show Index numbers on tab
if exists("+showtabline")
    function! MyTabLine()
        let s = ''
        let wn = ''
        let t = tabpagenr()
        let i = 1
        while i <= tabpagenr('$')
            let buflist = tabpagebuflist(i)
            let winnr = tabpagewinnr(i)
            let s .= '%' . i . 'T'
            let s .= (i == t ? '%1*' : '%2*')
            let s .= ' '
            let wn = tabpagewinnr(i,'$')

            let s .= '%#TabNum#'
            let s .= i
            " let s .= '%*'
            let s .= (i == t ? '%#TabLineSel#' : '%#TabLine#')
            let bufnr = buflist[winnr - 1]
            let file = bufname(bufnr)
            let buftype = getbufvar(bufnr, 'buftype')
            if buftype == 'nofile'
                if file =~ '\/.'
                    let file = substitute(file, '.*\/\ze.', '', '')
                endif
            else
                let file = fnamemodify(file, ':p:t')
            endif
            if file == ''
                let file = '[No Name]'
            endif
            let s .= ' ' . file . ' '
            let i = i + 1
        endwhile
        let s .= '%T%#TabLineFill#%='
        let s .= (tabpagenr('$') > 1 ? '%999XX' : 'X')
        return s
    endfunction
    set stal=2
    set tabline=%!MyTabLine()
    set showtabline=1
    highlight link TabNum Special
endif

" }}}
