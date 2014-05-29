"set nocompatible
"filetype off
"
"set rtp+=~/.vim/bundle/vundle/
"call vundle#rc()

"--------------------------------------------------------------------------
"" neobundle
set nocompatible               " Be iMproved
filetype off                   " Required!

if has('vim_starting')
	  set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  call neobundle#rc(expand('~/.vim/bundle/'))

  filetype plugin indent on     " Required!

  " Installation check.
  if neobundle#exists_not_installed_bundles()
	  echomsg 'Not installed bundles : ' .
				  \ string(neobundle#get_not_installed_bundle_names())
	  echomsg 'Please execute ":NeoBundleInstall" command.'
	  "finish
  endif
  NeoBundle 'alpaca-tc/alpaca_powertabline'
  NeoBundle 'Lokaltog/powerline', { 'rtp' : 'powerline/bindings/vim'}
  NeoBundle 'bling/vim-airline'


  "NeoBundle 'gmarik/vundle'
"" git
""Bundle 'Shougo/vimshell.git'
NeoBundle 'Shougo/vimproc.git'
NeoBundle 'scrooloose/syntastic.git'
"NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'chochos/ceylon-vim.git'
NeoBundle 'davidhalter/jedi-vim.git'
""Bundle 'vim-scripts/Conque-Shell.git'
""Bundle 'tpope/vim-fugitive.git'
"
"" vim-scripts
NeoBundle 'taglist.vim'
NeoBundle 'unite.vim'
NeoBundle 'surround.vim'
NeoBundle 'YankRing.vim'
NeoBundle 'Align'
"" other
NeoBundle 'The-NERD-Commenter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'JavaScript-syntax'
NeoBundle 'pangloss/vim-javascript'

NeoBundle 'nathanaelkane/vim-indent-guides.git'






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
syntax on

":botright vs
":new
