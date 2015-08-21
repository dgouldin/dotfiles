set nocompatible
set autoindent
set encoding=utf-8

" Line numbers
set number

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" Plugin 'Valloric/YouCompleteMe'
Plugin 'altercation/vim-colors-solarized'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'othree/yajs.vim'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'andviro/flake8-vim'
call vundle#end()

filetype plugin indent on
syntax on

" Strangely enough, mouse works fine in xterm2 without this line. In tmux,
" however, this line is necessary.
set ttymouse=xterm2
" Enable mouse in all modes (resize splits, etc.)
set mouse=a

set t_Co=256

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Line length management
set wrap
set textwidth=80
set colorcolumn=80
set formatoptions=cqt
highlight ColorColumn ctermbg=darkgrey guibg=darkgrey

" Git commit messages should wrap at 72 characters
autocmd FileType gitcommit setlocal textwidth=72 fo+=t

" Highlight search results
set hlsearch

" Fix the backspace key
set backspace=2

" Treat all numbers as decimal
set nrformats=

let g:vim_isort_map = '<C-i>'

" Ignore file types
set wildignore=*.pyc,*.gif,*.png,*.jpg

" Solarized
set background=dark
colorscheme solarized
let g:solarized_visibility = "high"
let g:solarized_contrast = "high"

" Powerline
set laststatus=2
set fillchars+=stl:\ ,stlnc:\
let g:Powerline_symbols = 'fancy'

" Ctrl-P
set wildignore+=*/Godeps/*,*/env/*,*/venv/*,*/build/*,*/node_modules/*

" Javascript libraries
let g:used_javascript_libs = 'react,flux,yajs'

" Flake8
let g:PyFlakeAggressive = 10
let g:PyFlakeOnWrite = 1
