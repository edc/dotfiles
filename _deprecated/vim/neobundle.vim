" Note: Skip initialization for vim-tiny or vim-small.
 if !1 | finish | endif

 if has('vim_starting')
   if &compatible
     set nocompatible               " Be iMproved
   endif

   " Required:
   set runtimepath+=~/.vim/bundle/neobundle.vim/
 endif

 " Required:
 call neobundle#begin(expand('~/.vim/bundle/'))

 " Let NeoBundle manage NeoBundle
 " Required:
 NeoBundleFetch 'Shougo/neobundle.vim'

 " My Bundles here:
 " Refer to |:NeoBundle-examples|.
 " Note: You don't set neobundle setting in .gvimrc!

 NeoBundle 'vim-scripts/moria',

 NeoBundle 'tpope/vim-fugitive'
 NeoBundle 'tpope/vim-rhubarb'
 NeoBundle 'scrooloose/syntastic'
 NeoBundle 'edc/python-indent'
" NeoBundle 'davidhalter/jedi-vim'
" NeoBundle 'mtth/scratch.vim'
 NeoBundle 'scrooloose/nerdtree'
 NeoBundle 'jlanzarotta/bufexplorer'
" NeoBundle 'kien/ctrlp.vim'

 NeoBundle 'Shougo/vimproc.vim',
 NeoBundle 'Shougo/unite.vim',
" NeoBundle 'Shougo/denite.nvim',
 NeoBundle 'Shougo/neomru.vim',
" NeoBundle 'Shougo/unite-outline'
" NeoBundle 'tsukkee/unite-tag'
" NeoBundle 'osyo-manga/unite-quickfix'
" NeoBundle 'Rykka/riv.vim'
" NeoBundle 'rizzatti/dash.vim'
" NeoBundle 'tpope/vim-repeat'
" NeoBundle 'tpope/vim-surround'
" NeoBundle 'easymotion/vim-easymotion'
 NeoBundle 'pangloss/vim-javascript'
 NeoBundle 'nathanaelkane/vim-indent-guides'
 NeoBundle 'Quramy/tsuquyomi'
 NeoBundle 'leafgarland/typescript-vim'
 NeoBundle 'mxw/vim-jsx'

 call neobundle#end()

 " Required:
 filetype plugin indent on

 " If there are uninstalled bundles found on startup,
 " this will conveniently prompt you to install them.
 NeoBundleCheck
