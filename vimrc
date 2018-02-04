set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'PProvost/vim-ps1'
call vundle#end()

syntax on
filetype plugin indent on

if filereadable("$HOME/.vimrc.local")
	source $HOME/.vimrc.local
endif
set laststatus=2

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
