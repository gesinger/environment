" overwinter
" by gesinger
" based on https://github.com/xdefrag/vim-beelzebub

hi clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name="overwinter"

" rgb(0,0,0)
let s:black = "0"
" rgb(188,188,188)
let s:white = "250"
" rgb(78,78,78)
let s:muted = "239"
" rgb(95,95,175)
let s:color = "61"
" rgb(175,135,0)
let s:highlight = "136"
" rgb(18,18,18)
let s:line = "233"

let s:normals = []
let s:muteds = []
let s:reversemuteds = []
let s:colors = []
let s:clears = []
let s:offs = []
let s:highlights = []
let s:lines = []

" syntax
let s:normals = s:normals + [
  \"Identifier",
  \"Function",
  \"Statement",
  \"Conditional",
  \"Repeat",
  \"Constant",
  \"Label",
  \"Operator",
  \"Keyword",
  \"Exception",
  \"PreProc",
  \"Include",
  \"Define",
  \"Macro",
  \"PreCondict",
  \"Type",
  \"StorageClass",
  \"Structure",
  \"Typedef",
  \"Special",
  \"SpecialChar",
  \"Tag",
  \"Delimiter",
  \"Debug",
  \"Ignore",
  \"Number",
  \"Boolean",
  \"Float",
  \]
let s:muteds = s:muteds + [
  \"Comment",
  \"Todo",
  \]
let s:colors = s:colors + [
  \"String",
  \"Character",
  \"SpecialComment",
  \"Underlined",
  \]

" interface
let s:normals = s:normals + [
  \"CursorLineNr",
  \"DiffAdd",
  \"DiffChange",
  \"DiffText",
  \"Normal",
  \"PmenuSbar",
  \"PmenuSel",
  \"PmenuThumb",
  \"Title",
  \]
let s:muteds = s:muteds + [
  \"Conceal",
  \"DiffDelete",
  \"Directory",
  \"FoldColumn",
  \"Folded",
  \"LineNr",
  \"MatchParen",
  \"MoreMsg",
  \"NonText",
  \"Pmenu",
  \"Question",
  \"QuickFixLine",
  \"SignColumn",
  \"SpecialKey",
  \"SpellBad",
  \"SpellCap",
  \"SpellLocal",
  \"SpellRare",
  \"TabLineFill",
  \"VirtSplit",
  \"WarningMsg",
  \"WildMenu",
  \]
let s:reversemuteds = s:reversemuteds + [
  \"StatusLine",
  \"StatusLineNC",
  \]
let s:clears = s:clears + [
  \"Cursor",
  \"CursorLine",
  \"ModeMsg",
  \"TabLine",
  \"Visual",
  \]
let s:offs = s:offs + [
  \"VertSplit",
  \]
let s:highlights = s:highlights + [
  \"IncSearch",
  \"Search",
  \"ErrorMsg",
  \]
let s:lines = s:lines + [
  \"ColorColumn",
  \]

function! HiGroup(group, ...)
  " remove bold and other highlights
  let string = 'hi ' . a:group . ' cterm=NONE '

  if strlen(a:1)
    let string .= 'ctermbg=' . a:1 . ' '
  endif

  if strlen(a:2)
    let string .= 'ctermfg=' . a:2 . ' '
  endif

  execute string
endfunction

for group in s:normals
  call HiGroup(group, s:black, s:white)
endfor

for group in s:muteds
  call HiGroup(group, s:black, s:muted)
endfor

for group in s:reversemuteds
  call HiGroup(group, "NONE", s:muted)
endfor

for group in s:colors
  call HiGroup(group, s:black, s:color)
endfor

for group in s:clears
  call HiGroup(group, s:white, s:black)
endfor

for group in s:offs
  call HiGroup(group, s:black, s:black)
endfor

for group in s:highlights
  call HiGroup(group, s:black, s:highlight)
endfor

for group in s:lines
  call HiGroup(group, s:line, "NONE")
endfor
