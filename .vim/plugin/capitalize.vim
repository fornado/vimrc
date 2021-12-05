" Vim global plugin for capitalizing first letter of each word in the current line.
" Last change: 2008-11-21 Fri 08:23 AM IST
" Maintainer: www.swaroopch.com/contact/
" License: www.opensource.org/licenses/bsd-license.php
if exists("load_capitalize")
    finish
endif

let load_capitalize = 1

" Refer ':help using-<Plug>'
"if !hasmapto('<Plug>Capitalize')
"    map <unique> <Leader>c <Plug>Capitalize
"endif
"
"nnoremap <unique> <script> <Plug>Capitalize <SID>Capitalize
"nnoremap <SID>Capitalize :call <SID>Capitalize()<CR>

nnoremap <leader>c :call <SID>Capitalize()<CR>

" Capitalize the first letter of each word
function s:Capitalize() range
    for line_number in range(a:firstline, a:lastline)
        let line_content = getline(line_number)
        let line_content = substitute(line_content, "\\w\\+", "\\u\\0", "g")
        call setline(line_number, line_content)
    endfor
endfunction
