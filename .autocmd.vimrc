" 行末のスペースを全て削除
autocmd BufWritePre * :%s/\s\+$//ge
