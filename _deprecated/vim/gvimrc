"colorscheme macvim
colo moria
highlight Folded guibg=#3f3f3f guifg=#aaaaaa
set lines=100
set columns=1000
set colorcolumn=80
set guioptions-=T
set guioptions-=e
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set showtabline=2
set guifont=consolas:h11
set linespace=3
set bg=dark
set hlsearch
set smartcase
set nu

"window 
let mapleader = ","
nmap <Leader>s :new<CR>
nmap <Leader>v :vne<CR>
nmap <Leader>o <C-w>o
nmap <Leader>c <C-w>c
nmap <Leader>j <C-w>j
nmap <Leader>k <C-w>k
nmap <Leader>h <C-w>h
nmap <Leader>l <C-w>l
nmap <Leader>p <C-w>p
nmap <Leader>x <C-w>x

"font size
nmap <Leader>= :set guifont=Consolas:h14 linespace=15<CR>
nmap <Leader>- :set guifont=Consolas:h12 linespace=5<CR>

"fullscreen
set fuoptions=maxvert,maxhorz
nmap <Leader>f :set fullscreen!<CR>


"NERDTree
let g:NERDTreeQuitOnOpen=0
let g:NERDTreeShowBookmarks=1

"highlighting log
:au BufRead log syntax manual
:au BufRead log syn match mdTopic "#[a-zA-Z-_]\+"
:au BufRead log hi link mdTopic Type
:au BufRead log syn region Date start="^Date: \d\{1,2\}\/\d\{1,2\}\/\d\{4\}" end="$"
:au BufRead log hi link Date Underlined
:au BufRead log syn region ModeLine start="^\~\~\~\~" end="$"
:au BufRead log hi ModeLine guibg=bg guifg=#404040 gui=none
:au BufRead log syn match Link "\[[^]]\+\_s*[^]]\+\](http:.*)" contains=@NoSpell
:au BufRead log hi Link guibg=bg guifg=#8080d0 gui=none
:au BufRead log syn match CodeBlock "[0-9a-zA-Z]\+[A-Z][0-9a-zA-Z]*" contains=@NoSpell
:au BufRead log syn match CodeBlock "[a-zA-Z~]*\/[^ ]\+\/[^ ]*" contains=@NoSpell
:au BufRead log syn match hashtag "#[0-9a-zA-Z-_]\+" contains=@NoSpell
:au BufRead log hi link hashtag Underlined 
:au BufRead log syn region CodeBlock start="^\t" end="$" contains=@NoSpell
:au BufRead log syn region CodeBlock start="`" end="`" contains=@NoSpell
:au BufRead log hi link CodeBlock String
:au BufRead log syn region BlockQuote start="^>" end="^\s*$"
:au BufRead log hi BlockQuote guibg=bg guifg=#40d040 gui=italic
:au BufRead log syn region Strike start="<s>" end="</s>"
:au BufRead log hi Strike guibg=bg guifg=#666666 gui=none

"omnicomplete
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
"
"color override
hi Comment guifg=#aa4444 gui=italic
hi CursorColumn guibg=#292929 guifg=#ffffff ctermbg=233 ctermfg=230


"keyboard
set macmeta

"syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']

"color. For some reason, putting this in vimrc does not work.
highlight Folded gui=italic guifg=Cyan4 guibg=Grey4

"let g:tsuquyomi_tsserver_path = '/usr/local/bin/tsserver'
"let g:tsuquyomi_nodejs_path = '/usr/local/bin/node'
let g:tsuquyomi_use_local_typescript = 0
let g:tsuquyomi_use_dev_node_module = 0
