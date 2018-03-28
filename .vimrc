call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()

"curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
let g:seoul256_background = 254
colo seoul256-light

"set paste

set nu
"set mouse=a
set ts=4
set autoindent
set cindent
set smartindent
set hlsearch
set showmatch
syntax on
set sw=1
set ruler
