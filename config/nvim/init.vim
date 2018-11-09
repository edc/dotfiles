let mapleader = ","
set mouse=a hidden ignorecase showmatch number
filetype plugin indent on

"autocmd
autocmd TermOpen * startinsert

"Plug
source ~/.config/nvim/plugs.vim

"Console colors
"See http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim
colorscheme moria
set background=dark
highlight Normal ctermbg=235 ctermfg=255
highlight StatusLine ctermfg=33

"window 
nmap <Leader>s :new<CR>
nmap <Leader>v :vne<CR>
nmap <Leader>c <C-w>c
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
nmap <Leader>p <C-w>p
nmap <Leader>x <C-w>x
nmap <Leader>= <C-w>=
nmap <Leader>> <C-w>>
nmap <Leader>< <C-w><
nmap <Leader>z <C-w>z
nmap <Leader>H <C-w>H
nmap <Leader>K <C-w>K

"autoformat - indentation and more
source ~/.config/nvim/autoformat.vim

"buffers
nmap <C-`> <ESC>:MBEToggle<CR>
nmap <Leader>be :BufExplorerHorizontalSplit<CR>

"language server
let g:LanguageClient_serverCommands = {
    \ 'python': ['~/opt/python-language-server/venv/bin/pyls'],
    \ 'go': ['/Users/eddie/.go-env/bin/go-langserver', '-gocodecompletion'],
    \ }
let g:deoplete#enable_at_startup = 1
nmap <Leader>/ :call LanguageClient_contextMenu()<cr>
nmap <Leader>? :call LanguageClient_textDocument_hover()<cr>

"Denite
nmap <Leader>e :Denite file_mru<cr>
nmap <c-p> :Denite -path=<C-R>=denite#project#path2project_directory(expand('%:p'), '')<CR> file/rec<cr>
