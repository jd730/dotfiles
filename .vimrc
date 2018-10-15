call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()


" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
"let g:seoul256_background = 233
"colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
let g:seoul256_background = 256
colo seoul256-light

"set paste

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
call vundle#end()            " required
filetype plugin indent on    " required


" <F2> Switch Window
map <F2> <C-w><C-w> 
" <F3> NERDTree 
map <F3> :NERDTreeToggle<cr>
map <F4> :IndentLinesToggle<cr>
map <F5> :w<cr>:! sh q.sh<cr>
map <F6> :w<cr>:! python3 carla_train_trpo.py<cr>
map <F7> :w<cr>:! python3 test_carlaenv.py<cr>

inoremap <c-s> :wq<CR>


let NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1

let g:indentLine_color_gui = '#385900'
let g:indentLine_color_term = 100
let g:indentLine_char = '¦'
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 0
let g:indentLine_enabled = 0
let g:indentLine_fileTypeExclude = ['help', 'nerdtree', 'text', 'sh']
let g:indentLine_bufNameExclude = ['_.*', 'NERD_tree.*']
let g:indentLine_maxLines = 3000

set nu
set mouse=a
set ts=4
set sw=1
set autoindent
set cindent
set smartindent
set smarttab

set hlsearch
set showmatch
syntax on
set ruler
set cc=80
highlight ColorColumn ctermbg=blue
set smartcase

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

au BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \ exe "norm g`\"" |
   \ endif

