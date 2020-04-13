if exists('b:current_syntax') | finish | endif

syn keyword ptlsKeyword output if then else switch case otherwise where for in when yield
syn keyword ptlsBuiltin floor ceil randFloat randRange randChoice equals notEquals addElem delElem delKey readLines union intersection difference symDifference printLines dropUntil lazyConcat peano pred printFrame println rangeStep toMap keys vals items join concatStrings split padLeft padRight format compose const iterate sum range toInt toFloat round pi euler abs pow mul div mod add sub max min minimum maximum lessEq lessThan greaterEq greaterThan notFunc notEq eq orFunc andFunc inFunc any all repr show print copy head tail at slice concat concatMap intersperse repeat take drop takeWhile takeUntil dropWhile find span groupBy suffixes map filter reduce reduceFirst reverse zip toList toArray toSet toNDArray length hasPrefix enumerate sort
syn keyword ptlsImport   import as
syn keyword ptlsBoolean  true false is and or not
syn match   ptlsFunction '\i\+\((\)\@='
syn match   ptlsLabel    '\<\u\i\+'
syn match   ptlsOperator '\(+\|-\|*\|/\|%\|>\|<\|=\||>\)'
syn match   ptlsNumber   '-\=\<\d\+\%(\.\d\+\)\=\>'
syn match   ptlsUpdate   '\(\$\|\.\|with\)'
syn match   ptlsComment  '--.*'
syn match   ptlsShebang  '\%^#!.*$'
syn region  ptlsString   start='"' skip='\\"' end='"'

hi link ptlsBoolean  Boolean
hi link ptlsBuiltin  Function
hi link ptlsComment  Comment
hi link ptlsFunction Identifier
hi link ptlsImport   PreProc
hi link ptlsKeyword  Keyword
hi link ptlsLabel    Type
hi link ptlsNumber   Number
hi link ptlsOperator Operator
hi link ptlsShebang  PreProc
hi link ptlsString   String
hi link ptlsUpdate   Structure

let b:current_syntax = 'pointless'
