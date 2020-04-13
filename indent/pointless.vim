if exists('b:did_indent')
  finish
endif

let b:did_indent = 1

function GetPtlsIndent()
  let lnum = prevnonblank(v:lnum - 1)

  if lnum == 0
    return 0
  endif

  let ind = indent(lnum)

  if getline(v:lnum - 1) =~ '\([=\[{]\|where\)\s*$'
    let ind += &sw
  endif

  if getline(v:lnum) =~ '^\s*|>' && getline(v:lnum - 1) !~ '^\s*|>'
    let ind += &sw
  endif

  if getline(v:lnum) =~ '^\s*[\]}]'
    let ind -= &sw
  endif

  if getline(v:lnum) == ''
    let ind -= &sw
  endif

  return ind
endfunction

setlocal indentexpr=GetPtlsIndent()
setlocal indentkeys+=>

