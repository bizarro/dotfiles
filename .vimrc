syntax on

set encoding=utf8

set wildmenu

set esckeys

set nobackup
set nowritebackup
set noswapfile

set number
set cursorline

set showmatch
set lcs=trail:·

set expandtab
set smarttab
set softtabstop=2
set shiftwidth=2

set ai
set si
set wrap

set ignorecase
set smartcase
set hlsearch
set incsearch

set laststatus=2

set mouse=a

set ruler

set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'airblade/vim-gitgutter'
Plugin 'mattn/emmet-vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'digitaltoad/vim-jade'
Plugin 'wavded/vim-stylus'

call vundle#end()

filetype plugin on

map <C-n> :NERDTreeToggle<CR>
