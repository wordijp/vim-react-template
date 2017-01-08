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


" region
syn include @javaScript syntax/javascript.vim
syn region rtIdentifierComplex
  \ contains=@javaScript
  \ start=+{+
  \ end=+}+
  \ keepend
  \ extend
  \ containedin=ALL

" tag name
syn match rtTag "\<rt-\(if\|repeat\|scope\|props\|class\|template\|include\|pre\)\>" containedin=ALL
hi def link rtTag Type

" TODO : support "<rt-import or <rt-require"
" XXX : wrong
"syn match rtImport "\<rt-\(import\|require\)\>" containedin=ALL
"hi def link rtImport Type

let b:current_syntax = "rt"

" vim: ts=8
