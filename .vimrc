" general settings
filetype on " enable file type detection
filetype indent on " enable indent file loading
filetype plugin on " enable plugin loading

syntax on

set shiftwidth=2
set autoindent " copies the indentation from the previous line
set smartindent
set encoding=utf-8
set fileformats=unix,mac,dos " also ffs, specifies file format for document

" See https://stackoverflow.com/questions/58825/javascript-syntax-highlighting-in-vim
autocmd BufEnter *.html :syntax sync fromstart

" Configure relative line numbering. 
" From https://jeffkreeftmeijer.com/vim-number/
set number relativenumber 
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END
