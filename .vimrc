call plug#begin('~/.vim/plugged')
Plug 'junegunn/seoul256.vim'
call plug#end()

execute pathogen#infect()

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
Plugin 'Valloric/YouCompleteMe'
"Plugin 'vim-syntastic/syntastic'
call vundle#end()            " required
filetype plugin indent on    " required


" <F2> Switch Window
map <F2> <C-w><C-w> 
" <F3> NERDTree 
map <F3> :NERDTreeToggle<cr>
map <F4> :IndentLinesToggle<cr>
map <F5> :w<cr>:SyntasticCheck<cr>
map <F6> :w<cr>:! git diff %<cr>
inoremap <C-S> :wq<CR>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" YouCompleteMe
"let g:ycm_autoclose_preview_window_after_completion=1
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>
"let g:ycm_max_num_candidates = 5 "limit
let g:loaded_youcompleteme = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['pyflakes']

" NERDTree
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

