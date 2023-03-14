set clipboard+=unnamedplus
set number
set mouse=a

hi Pmenu ctermfg=black ctermbg=gray  guibg=#444444
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff


call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/goyo.vim'
" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

"from youtube
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'glepnir/lspsaga.nvim'
" Plug 'aca/completion-tabnine', { 'do': './install.sh' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'JuliaEditorSupport/julia-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'skywind3000/vim-terminal-help'
" Using a non-default branch

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" from the ncmp
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'github/copilot.vim'
" Plug 'klafyvel/vim-slime-cells'

" Unmanaged plugin (manually installed and updated)

" Initialize plugin system
call plug#end()


let g:slime_target = "neovim"

let g:slime_cell_delimiter = "#%%"
nmap <leader>s <Plug>SlimeSendCell
let g:slime_python_ipython = 1

" vim-slime-cells
" nmap <c-c><c-c> <Plug>SlimeCellsSendAndGoToNext
" nmap <c-c><c-Down> <Plug>SlimeCellsNext
" nmap <c-c><c-Up> <Plug>SlimeCellsPrev


set completeopt=menu,menuone,noselect
