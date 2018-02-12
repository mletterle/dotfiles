set nocompatible
set packpath+=~/.vim
filetype off

syntax on
filetype plugin indent on
set omnifunc=syntaxcomplete#Complete

if filereadable("$HOME/.vimrc.local")
	source $HOME/.vimrc.local
endif

if exists("g:gui_oni")
    let g:loaded_airline = 1
    set laststatus=0
else
    let g:airline_powerline_fonts = 1
    let g:airline_theme='one'
    let g:Powerline_symbols='unicode'
    set laststatus=2
endif


set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab

let g:go_fmt_experimental=1

set termguicolors
set background=dark
colorscheme one 
