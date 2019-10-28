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

" Auto re-read file when it's changed, if there are no local changes
set autoread

" Use the old regex engine (performance fix)
set re=1

" Syntax highlighting
syntax on
set synmaxcol=200
autocmd FileType html syn region javaScript start=+<script\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
autocmd FileType html syn sync match htmlHighlight groupthere javaScript "<script"
autocmd FileType javascript syn sync ccomment javaScriptComment

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
set nowrap

" zfz overrides
let g:fzf_commits_log_options = '--all --graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

" Line numbers
highlight LineNr ctermfg=grey
set number

" Colors
colorscheme codedark
let g:airline_theme = 'codedark'
highlight TabLineFill ctermbg=239
highlight TabLine ctermbg=239
highlight CursorLine ctermbg=236
highlight DiffAdd ctermbg=238
highlight DiffChange ctermbg=238
highlight DiffDelete ctermbg=238
highlight DiffText ctermbg=241  cterm=bold

" Mappings
:map <C-n> :NERDTreeToggle<CR>
:map <C-f> :FZF<CR>
:map <C-a> :Ag<CR>

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

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'mileszs/ack.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'
Plug 'flrnprz/candid.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'tomasiser/vim-code-dark'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdcommenter'
Plug 'hail2u/vim-css3-syntax'

call plug#end()
