call plug#begin('~/.local/share/nvim/site/plugs')

Plug 'vim-scripts/moria'

Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'fholgado/minibufexpl.vim'
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'
Plug 'Shougo/denite.nvim'
Plug 'Shougo/neomru.vim'

call plug#end()
