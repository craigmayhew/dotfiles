set nocp
set number
set expandtab
set tabstop=2
set shiftwidth=2
set nobackup       "no backup files
set nowritebackup  "only in case you don't want a backup file while editing
set swapfile
set dir=~/tmp
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.
execute pathogen#infect()
syntax on
filetype plugin indent on

"get rid of the nasty dark blue comments
hi Comment term=bold ctermfg=Yellow guifg=#FF9933 gui=bold
