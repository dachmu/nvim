
"================================="
"           NERDTree              "
"================================="

" Let NERDtree focus on the document
let NERDTreeHijackNetrw=1
autocmd VimEnter * NERDTree | wincmd p
autocmd bufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
autocmd BufEnter, BufRead, BufNewFile *.wiki set filetype=markdown
autocmd BufEnter, BufRead, BufNewFile *.md set filetype=markdown
