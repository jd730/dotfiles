call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()


" seoul256 (dark):
"   Range:   233 (darkest) ~ 239 (lightest)
"   Default: 237
let g:seoul256_background = 233
colo seoul256

" seoul256 (light):
"   Range:   252 (darkest) ~ 256 (lightest)
"   Default: 253
"let g:seoul256_background = 254
"colo seoul256-light

"set paste

set nu
"set mouse=a
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

set smartcase

set laststatus=2 " 상태바 표시를 항상한다
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\

au BufReadPost *
   \ if line("'\"") > 0 && line("'\"") <= line("$") |
   \ exe "norm g`\"" |
   \ endif


