"pathogen
execute pathogen#infect()
"show line numbers, <F12> to toggle
set nu
nnoremap <F12> :set nonumber!<CR>:set foldcolumn=0<CR>

"identation = 4 spaces
set noai ts=4 sw=4 expandtab

"smart identation
set smarttab
set autoindent
filetype plugin indent on

"mark the 80 columns
set textwidth=79
set colorcolumn=80

"enable folding code base on identations, 'za' to toggle
set foldmethod=indent
set foldlevel=99

"default enconding utf8
set encoding=utf-8

" enable syntax
syntax on
syntax enable

"vim-solarized
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

"vim-airline
set laststatus=2
let g:airline_detect_modified = 1
let g:airline_detet_paste = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#symbol = '⎇ '

set t_Co=256
