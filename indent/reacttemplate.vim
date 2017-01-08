" Vim indent script for react-template
" Language:	react-template
" Maintainer:	wordijp <wordijp@gamil.com>
" URL:		https://github.com/wordijp/vim-react-template-syntax

if exists("b:did_indent")
  finish
endif

set indentexpr=
exe 'runtime! indent/html.vim'
unlet! b:did_indent

let b:react_template_subtype_indentexpr = &l:indentexpr
let b:did_indent = 1

setlocal indentexpr=GetReactTemplateIndent()
" html indentkeys
setlocal indentkeys=o,O,<Return>,<>>,{,},!^F

let s:starttag = '{'
let s:endtag = '}'

function! GetReactTemplateIndent(...)
  exe "let ind = ".b:react_template_subtype_indentexpr

  " XXX : not completed at once
  let l:pre_line = getline(v:lnum - 1)
  if l:pre_line =~ s:starttag && l:pre_line !~ s:endtag
    let ind = ind + &sw
  endif
  let l:line = getline(v:lnum)
  if l:line =~ s:endtag && l:line !~ s:starttag
    let ind = ind - &sw
  endif

  return ind
endfunction

