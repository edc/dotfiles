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
autocmd FileType python call deoplete#enable()
autocmd FileType go call deoplete#enable()
nmap <Leader>/ :call LanguageClient_contextMenu()<cr>
nmap <Leader>? :call LanguageClient_textDocument_hover()<cr>
" fix esc key issue: https://github.com/Shougo/deoplete.nvim/issues/386
let g:AutoClosePumvisible = {"ENTER": "<C-Y>", "ESC": "<ESC>"}

"Denite
nmap <Leader>e :Denite file_mru<cr>
nmap <c-p> :Denite -path=<C-R>=denite#project#path2project_directory(expand('%:p'), '')<CR> file/rec<cr>

let s:hidden_status = 0
function! ToggleHideStatus()
    if s:hidden_status == 0
        let s:hidden_status = 1
        set laststatus=0
    else
        let s:hidden_status = 0
        set laststatus=2
    endif
endfunction

nnoremap <S-h> :call ToggleHideStatus()<CR>
call ToggleHideStatus()

autocmd InsertEnter,InsertLeave * set cul!

if empty($CONDA_PREFIX) == 0
    let $VIRTUAL_ENV = $CONDA_PREFIX
endif
