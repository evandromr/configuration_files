" Turno filetype detection on only after initialize pathogen
filetype off
" Start pathogen to load plugins in ~/.vim/bundle
execute pathogen#infect()
" Turn plugins' helptags available
execute pathogen#helptags()

" show line numbers always, and toggle with <F12> key
set nu
nnoremap <F12> :set nonumber!<CR>:set foldcolumn=0<CR>

" enable code folding base on indentation
" 'zo' to open; 'zc' to close
" 'za' to toggle; 'zR' to open all folds
set foldmethod=indent
set foldlevel=99

" set default encoding to utf-8
set encoding=utf-8
set fileencoding=utf-8

" enable syntax
syntax on
syntax enable

" Nerd Commenter needs this
" https://github.com/scrooloose/nerdcommenter
filetype plugin indent on

" default identation = 4 spaces
set noai ts=4 sw=4 expandtab

" smart indentation
set smarttab
set autoindent

" try to keep the code 79 chars long
set textwidth=79
set wrapmargin=79
set colorcolumn=80

" git commits only 72 chars long
autocmd Filetype gitcommit set textwidth=72

" Pressing \ss will toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" VIM-LaTeX options
" http://vim-latex.sourceforge.net/index.php
set grepprg=grp\ -nH\ $*
let g:tex_flavor='latex'
set iskeyword+=:
" optional: remap vim-latex mapping to allow brazillian accents as \~ and \`
imap <C-b> <Plug>Tex_MathBF
imap <C-c> <Plug>Tex_MathCal
imap <C-l> <Plug>Tex_LeftRight
" fix to allow the e-acute (é) charachter
" http://vim-latex.sourceforge.net/index.php?subject=faq&title=FAQ#faq-e-acute
imap <buffer> <leader>it <Plug>Tex_InsertItemOnThisLine
" optional: set 2 spaces tab to work with tex files
autocmd FileType tex set sw=2

" set solarized colorscheme on gvim (but not vim)
" https://github.com/altercation/vim-colors-solarized
if has('gui_running')
    set background=dark
    colorscheme solarized
endif

" airline plugin options
" https://github.com/bling/vim-airline
set laststatus=2
set t_Co=256
let g:airline_detect_modified = 1
let g:airline_detet_paste = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#branch#symbol = '⎇ '
let g:airline_powerline_fonts = 1
" patched powerline font for fancy symbols
set guifont=Ubuntu\ Mono\ 12
