
syntax match ourBold /<b>.*<\/b>/
highlight default ourBold term=italic cterm=italic gui=italic

syntax keyword ourTodo TODO FIXME
hi def link ourTodo Error
