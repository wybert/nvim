set clipboard+=unnamedplus
set number
set mouse=a

" hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
" hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff

call plug#begin()
Plug 'jpalardy/vim-slime'
Plug 'tpope/vim-commentary'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'github/copilot.vim'
" Plug 'JuliaEditorSupport/julia-vim'
" Plug 'preservim/nerdtree'


" Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'junegunn/fzf.vim'

Plug 'klafyvel/vim-slime-cells'

call plug#end()

set shell=/bin/sh " set default shell

" let g:slime_target = "zellij"
" let g:slime_default_config = {"session_id": "current", "relative_pane": "right"}
" If you use tmux, please use the following configuration
let g:slime_target = "tmux"
let g:slime_default_config = {"socket_name": "default", "target_pane": "{last}"}
let g:copilot_filetypes = {'markdown': v:true, "julia": v:true, "python": v:true, "r": v:true, "sh": v:true, "bash": v:true, "zsh": v:true}

filetype plugin indent on

let g:slime_cell_delimiter = "#%%"
