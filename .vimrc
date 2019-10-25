" Some basics
set encoding=utf8
set incsearch
set backspace=start,eol,indent
set autoindent
set ruler
set cursorline
set showcmd
set clipboard=unnamed
set modifiable
let mapleader = " "

" Syntax highlighting. Limited to 200 lines for performance reasons
syntax on
set synmaxcol=200

" NERDTree
let NERDTreeShowHidden=1

" NERDComment
let g:NERDSpaceDelims=1

" coc
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-tsserver', 'coc-json', 'coc-emmet', 'coc-vetur', 'coc-eslint']
autocmd FileType json syntax match Comment +\/\/.\+$+

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
Plug 'scrooloose/nerdcommenter'

call plug#end()
