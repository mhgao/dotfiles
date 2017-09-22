call plug#begin('~/.vim/plugged')

"Definitely keep these plugs
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

call plug#end()

let g:fzf_launcher = "PATH_TO_THE_SCRIPT_FILE %s"
set encoding=utf-8

" Section to toggle on and off {{{

"highlight column after 'textwidth'
"set colorcolumn=80

"Opens NERDTree on enter and jump to main window
" autocmd vimenter * NERDTree
" autocmd vimenter * wincmd p

"Allows tab completion (conflicts with tab to insert 4 spaces)
" imap <Tab> <C-P>
" imap <S-Tab> <C-N>

autocmd FileType cpp          setlocal commentstring=//\ %s


" }}}


"Closes vim if only window left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

syntax on
colorscheme kolor

set background=dark
" let g:solarized_termcolors=256
" let g:solarized_termtrans=1
" colorscheme solarized

"Enables showing buffers in vim-airline
let g:airline#extensions#tabline#enabled = 1
"Uses powerline fonts
let g:airline_powerline_fonts = 1
"Sets airline theme
let g:airline_theme='kolor'
"Always display status line
set laststatus=2
let g:airline#extensions#ale#enabled = 1


"Enable line number relative
set number
set relativenumber
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
highlight CursorLineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


set encoding=utf-8
set incsearch
set autoindent
set cindent
" set background=dark
set fileformat=unix
set splitbelow
set splitright

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

autocmd FileType c setlocal tabstop=8 softtabstop=8 shiftwidth=8 expandtab 


" highlight lines over 80 columns long
highlight OverLength ctermbg=darkgrey ctermfg=white guibg=#FFD9D9
match OverLength /\%>80v.\+/

" make backspace behave in a sane manner
set backspace=indent,eol,start

set title

let mapleader=","
inoremap jk <ESC>

"Mapping for moving between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Disables arrow keys in normal mode
nnoremap <Up> <nop>
nnoremap <Down> <nop>
"Employs left/right arrows to switch buffers
nnoremap <Left> :bprevious<CR>
nnoremap <Right> :bnext<CR>

"Disables arrow keys in insert mode
inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Left> <nop>
inoremap <Right> <nop>

"toggle NERDTree
nmap <silent> <leader>k :NERDTreeToggle<CR>

" focus on NERDTree
nmap <silent> <leader>j :NERDTreeFocus<CR>

"Remaps to make split screens visually intuitive
nnoremap <C-\> :vsplit<CR>
nnoremap <C--> :split<CR>    " doesn't actually work

" scroll the viewport faster
nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

" remaps for fzf
nnoremap <silent> <leader>, :Files<CR>
nnoremap <silent> <leader>b :Buffers<CR>
