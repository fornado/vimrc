" Vim syntax file for log file
" Language: log
" Version: 1
" Last Change: 2021-10-08
" Maintainer: neo

""""" Initial Checks """"""""""""""""""""""""""""""""'
if version < 600 
    syntax clear
elseif exists("b:current_syntax")
    finish
endif

syn keyword kw Request Response
hi def kw term=bold cterm=bold gui=bold
