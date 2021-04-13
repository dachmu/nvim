set nocompatible
set nu rnu " Sets both normal line numbers and relative number
filetype plugin on
syntax on

" To show the commands i am executing in the normal mode
set showcmd
set hlsearch

" Indentation and encoding
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set mouse=a
set ruler

" Setting the <leader> key to personal preference
let mapleader = "\<Space>"

" To make vim use the python command instead of python3 and its variants
let g:pymode_python = 'python'

" Loads the install plugins
source ./Plugins/Plugins.vim

" Loads the NerdTree configuration 
source ./Plugins/NerdTreeConfig.vim

" Loads the MarkdownPreview configuration
source ./Plugins/MarkdownPreviewConfig.vim

map <F6> :setlocal spell! spelllang=en_us<CR>
map <F11> :setlocal spell!<CR> 

colorscheme pink-moon
set termguicolors

" Load VimWiki Configuration
source ./Plugins/VimWikiConfig.vim

" Load Airline Configuration
source ./Plugins/AirlineConfig.vim





