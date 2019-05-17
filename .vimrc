!stty -ixon

"" General Settings"""""""""""""""""""""""""""""""""""""""""""""

runtime! debian.vim

if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
"set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

set tabstop=4
set shiftwidth=4
set expandtab
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_browse_split = 3
set backupcopy=yes
set clipboard+=unnamedplus
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
set modeline
set modelines=5 " default numbers of lines to read for modeline instructions
set backspace=indent,eol,start	" more powerful backspacing
set smarttab " Smarter tab levels
set autoindent
filetype plugin indent on             " Automatically detect file types.
set number


"" Visual Settings""""""""""""""""""""""""""""""""""""""""""""""

set showmatch  " Show matching brackets.
set t_Co=256
syntax on
set background=dark
" colorscheme hashpunk-sw
colorscheme vimbrant
highlight LineNr ctermfg=darkgrey

"" Vundle Settings""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
filetype plugin indent on    " required

"" JavaScript Settings""""""""""""""""""""""""""""""""""""""""""

" Plugin 'jelera/vim-javascript-syntax'
" https://github.com/jelera/vim-javascript-syntax
"
" Plugin 'pangloss/vim-javascript'
" git clone https://github.com/pangloss/vim-javascript.git
"
" Plugin 'nathanaelkane/vim-indent-guides'
" https://github.com/nathanaelkane/vim-indent-guides
"
" Plugin 'Raimondi/delimitMate'
" https://github.com/Raimondi/delimitMate

"" Custom Macros""""""""""""""""""""""""""""""""""""""""""""""""
mapclear
let mapleader = ''

" Ctrl-C in insert mode splits line after delimitMate
imap <leader>c <CR><Esc>O

""" move between buffers
map <leader>h <C-w>h
map! <leader>h <Esc><C-w>h

map <leader>l <C-w>l
map! <leader>l <Esc><C-w>h

map <leader>k <C-w>k
map! <leader>k <Esc><C-w>k

map <leader>j <C-w>j
map! <leader>j <Esc><C-w>j

""" reload config
map <leader>x :so ~/.vimrc<CR>
map! <leader>x <Esc>:so ~/.vimrc<CR>

""" open this file
map <leader>v :e ~/.vimrc<CR>
map! <leader>v <Esc>:e ~/.vimrc<CR>

""" save
map <leader>s :w<CR>
map! <leader>s <Esc>:w<CR>

""" quit
map <leader>q :q<CR>
map! <leader>q <Esc>:q<CR>

""" move between tabs
map <leader>t :tabnew<CR>
map! <leader>t <Esc>:tabnew<CR>

map <leader>p gt<CR>
map! <leader>p <Esc>gt<CR>

map <leader>z gT<CR>
map! <leader>z <Esc>gT<CR>

""" open NERDTree
let g:NERDTreeWinPos = "right"
map <leader>n :NERDTree<CR>
map! <leader>n <Esc>:NERDTree<CR>

""" vsplit fast
" map <C-i> :vsplit<CR>
" map! <C-i> <Esc>:vsplit<CR>

""" run nodejs on current file
map <leader>a :! node %<CR>
map! <leader>a <Esc>:! node %<CR>

""" run coffeescript on current file
map <leader>f :! iced %<CR>
map! <leader>f <Esc>:! iced %<CR>

""" move between lines

""" run shell command
map <leader>i	:!
map! <leader>i <Esc>:!

""" open last file
map <leader>e	:e #<CR>
map! <leader>e :e #<CR>

""" for code-browser hot swapping
set nobackup
set nowritebackup

""" build directory with make and run 'prog'
map <leader>r :!make && ./prog<CR>
map! <leader>r :!make && ./prog<CR>

""" build current file with gcc and run 'prog'
map <leader>g <Esc>:!gcc % -o prog && ./prog<CR>
map! <leader>g <Esc>:!gcc % -o prog && ./prog<CR>

""" run bpython 
map <leader>b :! bpython3<CR>
map! <leader>b <Esc>:! bpython3<CR>
