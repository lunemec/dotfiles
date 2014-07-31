" Pathogen load
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set omnifunc=syntaxcomplete#Complete

" set 4 spaces instead of tabs
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nocompatible

" set mouse to work correctly
set mouse=a
set ttymouse=xterm2

" history
set history=1000
set undolevels=1000

" set highlight of extra whitespaces
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
au InsertLeave * match ExtraWhitespace /\s\+$/

" color scheme
colorscheme koehler
set ruler
set number
set background=dark
set backspace=indent,eol,start
autocmd FileType html setlocal shiftwidth=4 tabstop=4 noexpandtab


" quicker actions
set timeoutlen=500

" pymode specific options
let g:pymode = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options = 1
let g:pymode_folding = 0
let g:pymode_lint_unmodified = 1
let g:pymode_lint_ignore = "E501"
let g:pymode_lint_on_fly = 1
let g:pymode_rope = 0

set enc=utf-8
set fileencoding=utf-8
set viminfo='100,h

" ctrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim
set wildignore+=*.pyc,*.pyo
let g:ctrlp_max_depth = 6

" vim-airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme = "murmur"

" clipboard on F7
set clipboard=unnamedplus

"copy
vmap <F7> "+ygv"*y`>
"paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "*gP
nmap <S-F7> "*gp
imap <F7> <C-r><C-o>*
vmap <C-F7> "*p`]
cmap <F7> <C-r><C-o>*

" Rebind <Leader> key
let mapleader = ","

" set tab movement
nmap <Leader>n :bp<CR>
nmap <Leader>m :bn<CR>

" movement of blocks without select losing
vnoremap < <gv
vnoremap > >gv

" set moving between windows to ctrl+arrows
nnoremap <silent> <C-Right> <c-w>l
nnoremap <silent> <C-Left> <c-w>h
nnoremap <silent> <C-Up> <c-w>k
nnoremap <silent> <C-Down> <c-w>j

