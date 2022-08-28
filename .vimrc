set number
set cursorline
set laststatus=2
set tabstop=4
set shiftwidth=4
set clipboard=unnamedplus
set belloff=all
set hlsearch!
set autochdir
nnoremap <F3> :set hlsearch!<CR>
" xで削除した時はヤンクしない
vnoremap x "_x
nnoremap x "_x


set nocompatible

set list
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

nnoremap gr :tabprevious<CR>
"タブ自体を移動する
nnoremap <Tab>l :+tabmove<CR>
nnoremap <Tab>h :-tabmove<CR>

colorscheme hybrid

syntax on
" 256色¬
set t_Co=256
 " truecolor¬
set termguicolors
 " 背景色¬
set background=dark

nnoremap <C-n> :NERDTreeToggle<CR>

let g:ale_sign_column_always = 1
let g:ale_sign_error = 'E>'
let g:ale_sign_warning = '⚠'

nnoremap <silent> bn :<C-u>:bnext<CR>
nnoremap <silent> bp :<C-u>:bprev<CR>
nnoremap <silent> bf :<C-u>:bfirst<CR>
nnoremap <silent> bl :<C-u>:blast<CR>
nnoremap <silent> b1 :<C-u>:b1<CR>
nnoremap <silent> b2 :<C-u>:b2<CR>
nnoremap <silent> b3 :<C-u>:b3<CR>
nnoremap <silent> b4 :<C-u>:b4<CR>
nnoremap <silent> b5 :<C-u>:b5<CR>
nnoremap <silent> b6 :<C-u>:b6<CR>
nnoremap <silent> b7 :<C-u>:b7<CR>
nnoremap <silent> b8 :<C-u>:b8<CR>
nnoremap <silent> b9 :<C-u>:b9<CR>
nnoremap <silent> bd :<C-u>:bd<CR>
nnoremap <silent> bd1 :<C-u>:bd 1<CR>
nnoremap <silent> bd2 :<C-u>:bd 2<CR>
nnoremap <silent> bd3 :<C-u>:bd 3<CR>
nnoremap <silent> bd4 :<C-u>:bd 4<CR>
nnoremap <silent> bd5 :<C-u>:bd 5<CR>
nnoremap <silent> bd6 :<C-u>:bd 6<CR>
nnoremap <silent> bd7 :<C-u>:bd 7<CR>
nnoremap <silent> bd8 :<C-u>:bd 8<CR>
nnoremap <silent> bd9 :<C-u>:bd 9<CR>

nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L
nnoremap sH <C-w>H
nnoremap ss :<C-u>sp<CR><C-w>j
nnoremap sv :<C-u>vs<CR><C-w>l


let g:airline_theme = 'wombat'               " テーマの指定
let g:airline#extensions#tabline#enabled = 1 " タブラインを表示
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline_powerline_fonts = 1            " Powerline Fontsを利用

let g:cheatsheet#cheat_file = '~/.cheatsheet.md'
" let g:cheatsheet#float_window = 1
" " you can change float window size.
" let g:cheatsheet#float_window_width_ratio = 0.6
" let g:cheatsheet#float_window_height_ratio = 0.6

"" coc.nvim
""" <Tab>で候補をナビゲート
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <C-j>   pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <C-y> pumvisible() ? asyncomplete#close_popup() : "\<C-y>"
inoremap <expr> <CR> pumvisible() ? asyncomplete#close_popup() . "\<C-o>u" : "\<CR>"

" fzf
nnoremap <silent> fzf :Files<CR>
nnoremap <silent> ls :Buffers<CR>
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'

"vim-fugitive
nnoremap <silent><space>ga :Git add %:p<CR><CR>
nnoremap <silent><space>gc :Git commit<CR><CR>
nnoremap <silent><space>gs :Git<CR>
nnoremap <silent><space>gp :Git push<CR>
nnoremap <silent><space>gd :Gdiffsplit<CR>
nnoremap <silent><space>gl :Gclog<CR>
nnoremap <silent><space>gb :Git blame<CR>

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" この下に追加したいプラグインを入力する
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'preservim/nerdtree'
Plugin 'machakann/vim-sandwich'
Plugin 'gosukiwi/vim-atom-dark'
Plugin 'cohama/lexima.vim'
Plugin 'alvan/vim-closetag'
Plugin 'dense-analysis/ale'
Plugin 'luochen1990/rainbow'
Plugin 'simeji/winresizer'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ryanoasis/vim-devicons'
Plugin 'reireias/vim-cheatsheet'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'mattn/vim-lsp-settings'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'

call vundle#end()
filetype plugin indent on

set helplang=ja
