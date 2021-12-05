"
"function Browser() 
"    if has("mac") || has("macunix") || has("unix")
"        let s:browser = "firefox"
"        echo "is mac...."
"    else 
"        echo "isnot mac...."
"        finish
"    endif
"
"    "echo s:browser
"    return s:browser
"endfunction
"
"function Run(command)
"    if has("mac") || has("macunix") || has("unix")
"        let s:startCommand = "!open -a"
"        let s:endCommand = ""
"    else 
"        echo "Don't know how to handle this OS!"
"        finish
"    endif
"
"    "let s:cmd = "silent" . s:startCommand . " " . a:command . " " . s:endCommand
"    let s:cmd = s:startCommand . " " . a:command . " " . s:endCommand
"    echo s:cmd
"    execute s:cmd
"endfunction
"
"function OnlineDoc()
"    if &filetype == "vim"
"        let s:urlTempate = "http://vimdoc.sourceforge.net/search.php?search=<name>&docs=help"
"    endif
"
"    let s:wordUnderCursor = expand("<cword>")
"    let s:url = substitute(s:urlTempate, '<name>', s:wordUnderCursor, 'g')
"    echo s:url
"    call Run(Browser() . " " . s:url)
"endfunction
"
"noremap <silent> <C-d> :call OnlineDoc()<CR>
