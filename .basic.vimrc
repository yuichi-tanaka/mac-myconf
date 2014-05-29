""""""basic settings
""""""""""""""行番号を表示
"set number
""""""""""""""Vi互換をオフ
set nocompatible
""""""""""""""syntax on
syntax on
""""""""""""""バッファ
set hidden
""""""""""""""コマンドライン補完
set wildmenu
""""""""""""""強調表示
set hlsearch
""""""""""""""改行、インデントを削除できる
set backspace=indent,eol,start
""""""""""""""オートインデント
set autoindent
set smartindent
""""""""""""""ルーラー表示
set ruler
""""""""""""""ステータスを表示
set laststatus=2
""""""""""""""モードを表示
set showmode
""""""""""""""タイトルを表示
set title
""""""""""""""コマンドを表示
set showcmd
""""""""""""""保存確認
set confirm
""""""""""""""バックアップなし
set nobackup
""""""""""""""自動再読み込み
set autoread
""""""""""""""折り返しなし
set textwidth=0
""""""""""""""スクロールの余白
set scrolloff=5
""""""""""""""ビープ音なし
set vb t_vb=
""""""""""""""スワップファイルなし
set noswapfile

""""""""""""""クリップボード
set clipboard+=unnamed,autoselect


""""""""""""""タブ２
"set shiftwidth=2
"set tabstop=2

""""""""""""""スペース２
"set shiftwidth=2
"set softtabstop=2
"set expandtab
"
"""""""""""""" python
set shiftwidth=2
set tabstop=2
set softtabstop=2
set expandtab

"key-bind
nnoremap <C-j> <Nop>
nnoremap <C-]> g<C-]>
nnoremap <C-j><C-j> :<C-u>tag<CR>
nnoremap <C-j><C-k> :<C-u>pop<CR>
nnoremap <C-j><C-l> :<C-u>tags<CR>


""""""" syntasticの設定
let g:syntastic_mode_map ={"mode" : "active" , "active_filetypes":["javascript","json"]}
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
"set encoding=utf-8
"set guifont=Consolas\ for\ Powerline\ FixedD:h9
"let g:Powerline_symbols="fancy"
