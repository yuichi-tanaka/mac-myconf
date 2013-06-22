" 行末のスペースを全て削除
autocmd BufWritePre * :%s/\s\+$//ge
" javascript用make
autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen
