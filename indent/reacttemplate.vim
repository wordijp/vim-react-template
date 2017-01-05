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
"setlocal indentexpr=GetReactTemplateIndent()
"setlocal indentkeys=o,O,<Return>,<>>,{,},!^F

function! GetReactTemplateIndent(...)
"  if a:0 && a:1 == '.'
"    let v:lnum = line('.')
"  elseif a:0 && a:1 =~ '^\d'
"    let v:lnum = a:1
"  endif
"  let vcol = col('.')
"  call cursor(v:lnum,1)
  exe "let ind = ".b:react_template_subtype_indentexpr
  " TODO : here
"  let lnum = prevnonblank(v:lnum-1)
"  let line = getline(lnum)
"  let cline = getline(v:lnum)
"  let line  = substitute(line,'\C^\%(\s*{%\s*end\w*\s*%}\)\+','','')
"  let line .= matchstr(cline,'\C^\%(\s*{%\s*end\w*\s*%}\)\+')
"  let cline = substitute(cline,'\C^\%(\s*{%\s*end\w*\s*%}\)\+','','')
"  let sw = exists('*shiftwidth') ? shiftwidth() : &sw
"  let ind += sw * s:count(line,'{%\s*\%(if\|elsif\|else\|unless\|ifchanged\|case\|when\|for\|empty\|tablerow\|capture\)\>')
"  let ind -= sw * s:count(line,'{%\s*end\%(if\|unless\|ifchanged\|case\|for\|tablerow\|capture\)\>')
"  let ind -= sw * s:count(cline,'{%\s*\%(elsif\|else\|when\|empty\)\>')
"  let ind -= sw * s:count(cline,'{%\s*end\w*$')
  return ind
endfunction


