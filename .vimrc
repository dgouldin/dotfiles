set nocompatible
set autoindent

" Enable Pathogen
execute pathogen#infect()

syntax on
filetype plugin indent on

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
