set nocompatible
filetype off

syntax on
filetype plugin indent on

if filereadable("$HOME/.vimrc.local")
	source $HOME/.vimrc.local
endif
set laststatus=2

let g:airline_powerline_fonts = 1
let g:Powerline_symbols='unicode'
set tabstop=4 shiftwidth=4 softtabstop=4 expandtab smarttab
