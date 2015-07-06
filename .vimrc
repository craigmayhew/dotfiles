set nocp
set number
set expandtab
set tabstop=2
set shiftwidth=2
execute pathogen#infect()
syntax on
filetype plugin indent on

"get rid of the nasty dark blue comments
hi Comment term=bold ctermfg=Yellow guifg=#FF9933 gui=bold
