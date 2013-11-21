" 行末のスペースを全て削除
autocmd BufWritePre * :%s/\s\+$//ge
" javascript用make
autocmd FileType javascript :compiler gjslint
autocmd QuickfixCmdPost make copen
autocmd BufNewFile,BufRead *.ejs setf html
autocmd BufNewFile,BufRead *.handlebars setf html
