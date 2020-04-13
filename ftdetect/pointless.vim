if did_filetype() | finish | endif
fun! s:detectPtls()
    if getline(1) =~# '^#!.*runpointless\>' | setf pointless | endif
endfun

autocmd BufNewFile,BufRead *.ptls setlocal filetype=pointless
autocmd BufNewFile,BufRead * call s:detectPtls()
autocmd FileType pointless set commentstring=--\ %s
