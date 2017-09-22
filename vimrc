
" Section Plugins {{{

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

"Closes vim if only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}


" Section Plugin Options {{{

let g:fzf_launcher = "PATH_TO_THE_SCRIPT_FILE %s"

" Enables showing buffers in vim-airline
let g:airline#extensions#tabline#enabled = 1
" Uses powerline fonts
let g:airline_powerline_fonts = 1
" Sets airline theme
let g:airline_theme='kolor'
" Always display status line
set laststatus=2

let g:airline#extensions#ale#enabled = 1

" Closes vim if only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" }}}

" Section Options {{{

" Defaults to 4 space tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set title
set encoding=utf-8

set incsearch
set autoindent

set splitbelow
set splitright

" make backspace behave in a sane manner
 set backspace=indent,eol,start

" Makes things look pretty
syntax on
set background=dark
colorscheme kolor

" toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<CR>

" focus on NERDTree
nmap <silent> <leader>j :NERDTreeFocus<CR>

" Numbers to the left of the screen
set number
set relativenumber
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


" highlight lines over 80 columns long
highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

" }}}


" Section Autocommands {{{

autocmd FileType c,cpp      setlocal commentstring=//\ %s cindent
autocmd FileType c      setlocal tabstop=8 softtabstop=8 shiftwidth=8 expandtab fileformat=unix

" }}}


" Section Remaps {{{
let mapleader=","
inoremap jk <ESC>

" Mapping for moving between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Scrolls the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

"toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<CR>

" remaps for fzf
nnoremap <silent> <leader>, :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>

" " Allows tab completion (conflicts with tab to insert 4 spaces)
" imap <Tab> <C-P>
" imap <S-Tab> <C-N>

" }}} 

" Section Disable Arrows {{{

"Disables arrow keys in normal mode
nnoremap <Up> <nop>
nnoremap <Down> <nop>
nnoremap <Left> <nop>
nnoremap <Right> <nop>

"Disables arrow keys in insert mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

" }}}
