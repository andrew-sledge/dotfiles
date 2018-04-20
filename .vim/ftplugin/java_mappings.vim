""" formatting
setlocal sw=4
setlocal ts=4
setlocal sts=4

autocmd BufWritePost *.java :s/\t/    /ge
