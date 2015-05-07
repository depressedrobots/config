set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'leafgarland/typescript-vim.git'

Plugin 'jason0x43/vim-js-indent'

Plugin 'mattn/emmet-vim'

Plugin 'scrooloose/nerdtree.git'

Plugin 'flazz/vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set t_Co=256
set number
set background=dark
set tabstop=4
set shiftwidth=4
set smarttab
set ai
set smartindent
syntax on
set showmatch
set cursorline
set autoindent
set nowrap

" auto-commenting
:set formatoptions+=r

" markdown syntax highight works only with .markdown file extension by default. add .md extension
au BufRead,BufNewFile *.md set filetype=markdown

" arduino files use c++ sytnax highlighting
autocmd BufNewFile,BufReadPost *.ino,*.pde set filetype=cpp

" enable word wrapping for latex files
autocmd BufRead,BufNewFile   *.tex setlocal wrap linebreak

" nerdtree shortcut
map <C-n> :NERDTreeToggle<CR>

colorscheme zenburn
