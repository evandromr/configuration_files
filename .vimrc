" Start pathogen to load plugins in ~/.vim/bundle
execute pathogen#infect()

"show line numbers always, and toggle with <F12> key
set nu 
nnoremap <F12> :set nonumber!<CR>:set foldcolumn=0<CR>

"enable code folding base on indentation
set foldmethod=indent
set foldlevel=99

" enable syntax
syntax on
syntax enable

" Ned commenter needs this
filetype plugin indent on

" identation = 4 spaces
set noai ts=4 sw=4 expandtab

" smart indentation
set smarttab
set autoindent

" try to keep the code 79 chars long
set textwidth=79
set wrapmargin=79
set colorcolumn=80

"auto identation for python
autocmd FileType python set smartindent cinwords=if,elif,else,else:,for,while,try,except,finally,def,class

"recommended settings for vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavour='latex'
set iskeyword+=:

set background=dark
colorscheme solarized
