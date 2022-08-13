set number
set cursorline
set laststatus=2
set ts=4
set nocompatible

colorscheme hybrid

syntax on
" 256色¬
set t_Co=256
 " truecolor¬
set termguicolors
 " 背景色¬
set background=dark

map <C-n> :NERDTreeToggle<CR>


let g:ale_sign_column_always = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠'

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" この下に追加したいプラグインを入力する
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'scrooloose/nerdtree'
Plugin 'machakann/vim-sandwich'
Plugin 'neoclide/coc.nvim'
Plugin 'itchyny/lightline.vim'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'cohama/lexima.vim'
Plugin 'alvan/vim-closetag'
Plugin 'dense-analysis/ale'
Plugin 'luochen1990/rainbow'
Plugin 'simeji/winresizer'
Plugin 'vim-jp/vimdoc-ja'

call vundle#end()
filetype plugin indent on
set helplang=ja
