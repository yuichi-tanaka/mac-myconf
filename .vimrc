set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
" git
"Bundle 'Shougo/vimshell.git'
Bundle 'Shougo/vimproc.git'
"Bundle 'vim-scripts/Conque-Shell.git'
"Bundle 'tpope/vim-fugitive.git'

" vim-scripts
Bundle 'taglist.vim'
Bundle 'unite.vim'
Bundle 'surround.vim'
Bundle 'YankRing.vim'
" other
Bundle 'The-NERD-Commenter'
Bundle 'altercation/vim-colors-solarized'
Bundle 'JavaScript-syntax'
Bundle 'pangloss/vim-javascript'






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



"""""""ショートカット用
if filereadable(expand('~/.shortcat.vimrc'))
	:source ~/.shortcat.vimrc
endif

"""""""オート用
if filereadable(expand('~/.autocmd.vimrc'))
	:source ~/.autocmd.vimrc
endif
""""""""標準設定用
if filereadable(expand('~/.basic.vimrc'))
	:source ~/.basic.vimrc
endif

filetype plugin indent on
":botright vs
":new
