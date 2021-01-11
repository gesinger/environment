" Vim syntax file
" Language: M3U8
" Maintainer: gesinger

if exists("b:current_syntax")
  finish
endif

syntax match Tag   /^#EXT[^:]\+/
