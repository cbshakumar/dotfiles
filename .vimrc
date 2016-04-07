let mapleader=" "

nnoremap <leader>so :so ~/.vimrc<cr>
nnoremap <leader>l :wincmd l<cr>
nnoremap <leader>w :wincmd w<cr>
nnoremap <leader>h :wincmd h<cr>

"map vertical split resize
nnoremap <leader>> :vertical resize -5<cr>
nnoremap <leader>< :vertical resize +5<cr>

nmap <leader>t :TagbarToggle<CR>

set shell=bash\ -l

set nocompatible              " be iMproved, required
filetype off                  " required
if has("autocmd")
    filetype indent plugin on
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

if filereadable(expand("~/.vimrc.bundles"))
            source ~/.vimrc.bundles
        endif
call vundle#end()            " required
filetype plugin indent on

syntax on
set autoread
set noswapfile
set number
set relativenumber!
color gruvbox
set background=dark
set path=$PWD/**
set wildmenu
set wildmode=longest:full,full
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set autoindent
set statusline=%t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P
set laststatus=2
set tags=$PWD/.git/tags
set clipboard=unnamed
runtime macros/matchit.vim

au BufNewFile,BufRead *.coffee set filetype=coffee
