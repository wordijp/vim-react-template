" Vim syntax file
" Language:	react-template
" Maintainer:	wordijp <wordijp@gamil.com>
" URL:		https://github.com/wordijp/vim-react-template-syntax


" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

" Read the HTML syntax to start with

"source $VIMRUNTIME/syntax/html.vim
runtime! syntax/html.vim
unlet b:current_syntax


" -------------------
" TODO : here
" -------------------


let b:current_syntax = "rt"

" vim: ts=8
