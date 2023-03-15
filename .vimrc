" Configuration file for vim

"
"
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing
set clipboard+=unnamedplus

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
set number
syntax on

set mouse=a

set synmaxcol=2048
set showcmd
set encoding=utf-8  
set t_Co=256
set autoindent
set tabstop=4
set expandtab
set softtabstop=2
set textwidth=80
set wrap
set linebreak
set wrapmargin=2
set showmatch
set hlsearch
" set incsearch
" set spell spelllang=en_us
set undofile
set history=1000
set autoread
set wildmenu
set wildmode=longest:list,full


" let g:slime_target = "tmux"
let g:slime_target = "vimterminal"




" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" from youtube
"Plug 'nvim-lua/plenary.nvim'

Plug 'sillybun/vim-repl'
Plug 'mechatroner/rainbow_csv'
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()


let g:repl_program = {
            \   'python': 'ipython',
            \   'default': 'zsh',
            \   'r': 'R',
            \   'lua': 'lua',
            \   'vim': 'vim -e',
            \   }
let g:repl_predefine_python = {
            \   'numpy': 'import numpy as np',
            \   'matplotlib': 'from matplotlib import pyplot as plt'
            \   }
let g:repl_cursor_down = 1
let g:repl_python_automerge = 1
let g:repl_ipython_version = '7'
let g:repl_output_copy_to_register = "t"

nnoremap <leader>r :REPLToggle<Cr>
autocmd Filetype python nnoremap <F12> <Esc>:REPLDebugStopAtCurrentLine<Cr>
autocmd Filetype python nnoremap <F10> <Esc>:REPLPDBN<Cr>
autocmd Filetype python nnoremap <F11> <Esc>:REPLPDBS<Cr>

let g:sendtorepl_invoke_key = "<leader>w"          "传送代码快捷键，默认为<leader>w
let g:repl_position = 3                             "0表示出现在下方，1表示出现在上方，2在左边，3在右边
let g:repl_stayatrepl_when_open = 0         "打开REPL时是回到原文件（1）还是停留在REPL窗口中（0）
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
