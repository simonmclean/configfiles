" Some basics
set incsearch
set backspace=start,eol,indent
set autoindent
set ruler
set showcmd
syntax on
set clipboard=unnamed

" coc
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-tsserver', 'coc-json', 'coc-emmet', 'coc-vetur']

" formatting
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set wrap!

" zfz overrides
let g:fzf_commits_log_options = '--all --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Line numbers
highlight LineNr ctermfg=grey
set number

" Colors
colorscheme codedark
let g:airline_theme = 'codedark'

" Mappings
:map <C-n> :NERDTreeToggle<CR>
:map <C-f> :FZF<CR>
:map <C-a> :Ag<CR>

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'flrnprz/candid.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'

call plug#end()
