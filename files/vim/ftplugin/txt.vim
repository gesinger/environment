" navigate according to soft wraps
nnoremap j gj
nnoremap k gk
nnoremap 0 g0
nnoremap $ g$
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>

"set nonumber
"set spell spelllang=en_us

" Disabled, using Goyo instead
" http://vim.wikia.com/wiki/Word_wrap_without_line_breaks
"set wrap
"set linebreak
"set nolist " disables line break
"set textwidth=0
"set wrapmargin=0
"set columns=80

syn match chapter /^_.*/
hi def chapter ctermfg=red

syn match horizRef /-\{5,}/
hi def horizRef ctermfg=blue

syn match dialogue /\".\{-}\"/
hi def dialogue ctermfg=yellow
