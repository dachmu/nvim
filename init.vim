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

" To make vim use the python command instead of python3 and its variants
let g:pymode_python = 'python'

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Plugin for creating wikies 
Plug 'vimwiki/vimwiki'

" Plugin for file navigation
Plug 'preservim/nerdtree'

" Information bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"
Plug 'neoclide/coc-sources'

" Plugin to manage markdown previews
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'iamcco/mathjax-support-for-mkdp'

" Plugin to manage file conversion
Plug 'vim-pandoc/vim-pandoc'

" Plugin for markdown syntax
Plug 'vim-pandoc/vim-pandoc-syntax'

" Initialize plugin system
call plug#end()


" Let NERDtree focus on the document
autocmd VimEnter * NERDTree | wincmd p
autocmd bufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
autocmd BufEnter, BufRead, BufNewFile *.wiki set filetype=markdown
autocmd BufEnter, BufRead, BufNewFile *.md set filetype=markdown

let g:mkdp_auto_open = 1
let NERDTreeHijackNetrw=1

map <F6> :setlocal spell! spelllang=en_us<CR>
map <F11> :setlocal spell!<CR> 
nmap <C-p> <Plug>MarkdownPreviewToggle



"================================="
"           VIM WIKI              "
"================================="

" Makes vimwiki markdown links as [text](text.md) instead of [text](text) 
let g:vimwiki_markdown_link_ext = 1

let g:vimwiki_list = [{'path': 'D:/Dropbox/Wikies', 'syntax': 'markdown', 'ext': '.md'},
        \{'path': 'D:/Dropbox/Writing', 'syntax': 'markdown', 'ext': '.md'},
        \{'path': 'D:/Dropbox/Writing/Tools', 'syntax': 'markdown', 'ext': '.md'}]


"================================="
"           AIRLINE               "
"================================="

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Switch to your current theme
let g:airline_theme = 'onedark'

" Always show tabs
set showtabline=2






