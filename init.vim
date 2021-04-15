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
set encoding=UTF-8
set mouse=a
set ruler

" Prevents Vim from hiding some stuff
set conceallevel=0

" Allows search down into subfolers
set path+=**

" Display all matching files when tab complete
set wildmenu

" Sets the split to my personal preference
set splitright
set splitbelow

" Setting the <leader> key to personal preference
let mapleader = "\<Space>"

" To make vim use the python command instead of python3 and its variants
let g:pymode_python = 'python'

let nvim_path = '$HOME\AppData\Local\nvim'

" Loads the install plugins
exec 'source' nvim_path . '/Plugins/Plugins.vim'

" Loads the NerdTree configuration 
exec 'source' nvim_path . '/Plugins/NerdTreeConfig.vim'

" Loads the MarkdownPreview configuration
 exec 'source' nvim_path . '/Plugins/MarkdownPreviewConfig.vim'

map <F6> :setlocal spell! spelllang=en_us<CR>
map <F7> :setlocal spell! spelllang=es<CR>
map <F11> :setlocal spell!<CR> 

colorscheme pink-moon
set termguicolors

" Loads VimWiki Configuration
exec 'source' nvim_path . '/Plugins/VimWikiConfig.vim'

" Loads Airline Configuration
exec 'source' nvim_path . '/Plugins/AirlineConfig.vim'

" Loads VimAutosave Configuration file
exec 'source' nvim_path . '/Plugins/VimAutosaveConfig.vim'
