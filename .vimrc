set nocompatible
filetype plugin indent on

set runtimepath+=/Users/yuichi/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('/Users/yuichi/.vim/bundle'))

NeoBundleFetch 'Shougo/neobundle.vim'

"--------------------------------------------------------------------------
"" neobundle
  NeoBundle 'alpaca-tc/alpaca_powertabline'
  NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
  NeoBundle 'bling/vim-airline'


  "NeoBundle 'gmarik/vundle'
"" git
NeoBundle 'scrooloose/syntastic.git'
NeoBundle 'chochos/ceylon-vim.git'
NeoBundle 'davidhalter/jedi-vim.git'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/gist-vim'
"
"" vim-scripts
NeoBundle 'taglist.vim'
NeoBundle 'unite.vim'
NeoBundle 'surround.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'Align'
"""" other
NeoBundle 'The-NERD-Commenter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'JavaScript-syntax'
NeoBundle 'pangloss/vim-javascript'
""
NeoBundle 'nathanaelkane/vim-indent-guides.git'
""
""
""
""
""
""
""""""""""""""""""""""uniteの設定
if filereadable(expand('~/.unite.vimrc'))
	:source ~/.unite.vimrc
endif
""
""""""""""""""""""""""NERD-Commenterの設定
if filereadable(expand('~/.nerd.vimrc'))
	:source ~/.nerd.vimrc
endif
""
""""""""""font用
if filereadable(expand('~/.font.vimrc'))
	:source ~/.font.vimrc
endif
""
""""""""""Solarized用
if filereadable(expand('~/.solarized.vimrc'))
		:source ~/.solarized.vimrc
endif
""
""
""
"""""""""ショートカット用
if filereadable(expand('~/.shortcat.vimrc'))
	:source ~/.shortcat.vimrc
endif
""
"""""""""オート用
if filereadable(expand('~/.autocmd.vimrc'))
	:source ~/.autocmd.vimrc
endif
""""""""""標準設定用
if filereadable(expand('~/.basic.vimrc'))
	:source ~/.basic.vimrc
endif
""
let g:gist_curl_options = "-k"
let g:gist_detect_filetype = 1
""
filetype plugin indent on
syntax on
""
""":botright vs
""":new

call neobundle#end()
