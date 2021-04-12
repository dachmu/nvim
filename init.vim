set nocompatible
set nu rnu " Sets both normal line numbers and relative number
filetype plugin on
syntax on
set showcmd
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set fileformat=unix
set encoding=utf-8
set mouse=a
set ruler

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Note taking pluggin
Plug 'vimwiki/vimwiki'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'neoclide/coc-sources'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
Plug 'iamcco/mathjax-support-for-mkdp'
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Initialize plugin system
call plug#end()

let g:vimwiki_list = [{'path': 'D:/Dropbox/NotesWiki', 'syntax': 'markdown'}]
let g:pymode_python = 'python'

let NERDTreeHijackNetrw=1
" Let NERDtree focus on the document
autocmd VimEnter * NERDTree | wincmd p
autocmd bufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
autocmd BufEnter, BufRead, BufNewFile *.wiki set filetype=markdown
autocmd BufEnter, BufRead, BufNewFile *.md set filetype=markdown

let g:mkdp_auto_open = 1


map <F6> :setlocal spell! spelllang=en_us<CR>
map <F11> :setlocal spell!<CR> 
nmap <C-p> <Plug>MarkdownPreviewToggle
