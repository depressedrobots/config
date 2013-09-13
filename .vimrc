set number
execute pathogen#infect()
set background=dark
colorscheme solarized
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
