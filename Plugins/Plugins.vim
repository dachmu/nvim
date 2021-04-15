
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')

" Plugin for creating wikies 
Plug 'vimwiki/vimwiki'

" Plugin for file navigation
Plug 'preservim/nerdtree'

" Manages surrounding tasks
Plug 'tpope/vim-surround'

" Manages comments
Plug 'tpope/vim-commentary'

"Allows comentary and surround work with .
Plug 'tpope/vim-repeat'

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

" Handles visual of git diff
Plug 'airblade/vim-gitgutter'

" Plugin for autosaving changes on vim
Plug 'vim-scripts/vim-auto-save'

" Theme
Plug 'sts10/vim-pink-moon'

" Icons
Plug 'ryanoasis/vim-devicons'

" Synstax Hightlight
Plug 'sheerun/vim-polyglot'
" Initialize plugin system
call plug#end()

