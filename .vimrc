" Some basics
set encoding=UTF-8
set incsearch
set backspace=start,eol,indent
set autoindent
set ruler
set cursorline
set showcmd
set clipboard=unnamed
set modifiable
let mapleader = " "
set t_Co=256

" Auto re-read file when it's changed, if there are no local changes
set autoread

" Use the old regex engine (performance fix)
autocmd FileType css scss less sass regexpengine=1

" Syntax highlighting
syntax on
set synmaxcol=200

" NERDTree
let NERDTreeShowHidden=1

" NERDComment
let g:NERDSpaceDelims=1

" airline
let g:airline_section_y = ''
let g:airline_section_z = ''
let g:airline_skip_empty_sections = 1

" coc
let g:coc_global_extensions = ['coc-html', 'coc-css', 'coc-tsserver', 'coc-json', 'coc-emmet', 'coc-vetur', 'coc-eslint']
autocmd FileType json syntax match Comment +\/\/.\+$+

" formatting
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap

" zfz overrides
let g:fzf_commits_log_options = '--all --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Line numbers
highlight LineNr ctermfg=grey
set number

" Mappings
:map <C-n> :NERDTreeToggle<CR>
:map <C-p> :FZF<CR>
:map <C-f> :Ag<CR>
:map \| :vertical split<CR>
:map - :split<CR>

" Move junk files 
if !isdirectory($HOME . "/.vim/backup")
    call mkdir($HOME . "/.vim/backup", "p", 0700)
endif
set backupdir=~/.vim/backup//

if !isdirectory($HOME . "/.vim/swap")
    call mkdir($HOME . "/.vim/swap", "p", 0700)
endif
set directory=~/.vim/swap//

if !isdirectory($HOME . "/.vim/undo")
    call mkdir($HOME . "/.vim/undo", "p", 0700)
endif
set undodir=~/.vim/undo//

" Nord theme customisation
augroup nord-theme-overrides
    autocmd!
    " autocmd ColorScheme nord highlight Comment ctermfg=4
augroup END

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'airblade/vim-gitgutter'
Plug 'posva/vim-vue'
Plug 'easymotion/vim-easymotion'
Plug 'mtth/scratch.vim'
Plug 'vim-scripts/svg.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'heavenshell/vim-jsdoc'

call plug#end()

" colorscheme must be set after plugins
colorscheme nord
