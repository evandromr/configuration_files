" Start pathogen to load plugins in ~/.vim/bundle
execute pathogen#infect()

" show line numbers always, and toggle with <F12> key
set nu
nnoremap <F12> :set nonumber!<CR>:set foldcolumn=0<CR>

" enable code folding base on indentation use 'za' to toggle
set foldmethod=indent
set foldlevel=99

" set default encoding
set encoding=utf-8

" enable syntax
syntax on
syntax enable

" Nerd Commenter needs this
filetype plugin indent on
" Defines file type comment marks for commentary.vim
autocmd FileType python set commentstring=#\ %s

" Airline needs this
set laststatus=2
set t_Co=256

" identation = 4 spaces
set noai ts=4 sw=4 expandtab

" smart indentation
set smarttab
set autoindent

" try to keep the code 79 chars long
set textwidth=79
set wrapmargin=79
set colorcolumn=80

" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

"recommended settings for vim-latex
set grepprg=grep\ -nH\ $*
let g:tex_flavour='latex'
set iskeyword+=:

" Airline configuration
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1

"flakes8 options (syntax checker for python)
let g:PyFlakeOnWrite = 1
let g:PyFlakeCheckers = 'pep8,mccabe,pyflakes'
let g:PyFlakeDefaultComplexity=10
let g:PyFlakeDisabledMessages = ''
let g:PyFlakeCWindow = 6
let g:PyFlakeSigns = 1
let g:PyFlakeMaxLineLength = 100
let g:PyFlakeRangeCommand = 'Q'

" set solarized colorscheme
set background=dark
colorscheme solarized
