set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" git
Bundle 'Shougo/vimshell.git'
Bundle 'Shougo/vimproc.git'

" vim-scripts
Bundle 'taglist.vim'
Bundle 'unite.vim'
Bundle 'surround.vim'
Bundle 'YankRing.vim'
"Bundle 'project.vim'
" other
Bundle 'The-NERD-Commenter'
Bundle 'altercation/vim-colors-solarized'

filetype plugin indent on




""""""""""""""""""""uniteの設定
if filereadable(expand('~/.unite.vimrc'))
	:source ~/.unite.vimrc
endif

""""""""""""""""""""NERD-Commenterの設定
if filereadable(expand('~/.nerd.vimrc'))
	:source ~/.nerd.vimrc
endif

""""""""font用
if filereadable(expand('~/.font.vimrc'))
	:source ~/.font.vimrc
endif

""""""""Solarized用
if filereadable(expand('~/.solarized.vimrc'))
	:source ~/.solarized.vimrc
endif
""""""""""""""クリップボード
set clipboard=unnamed,autoselect
