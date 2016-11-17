set nocompatible              " be iMproved, required
filetype off                  " required


" ----------------- Vundle Start --------------------------------
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'tpope/vim-fugitive'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'
" Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
" --------------------- Vundle End -----------------------------------


set number	"show line numbers
set encoding=utf8
syntax enable	"enable syntax highlighting


" ----------- Split windows -----------------
"  use :sv <filename> to split the layout vertically
"  use :vs <filename> to split the windowhorizontally
set splitbelow
set splitright

" split navigations - use Ctrl+j,k,l,h to move between subwindows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" -------------- Split Windows end ----------------

" --------------- Code folding ----------------

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
" remap spacebar to fold code
nnoremap <space> za
let g:SimpylFold_docstring_preview=1 "view docstrings for folded code


" --------------PEP8 --------------

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

" -----------Tab for .js, .html, and .css files
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" --------- Flag white space in python files ----------------
"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree




" -----------------YouCompleteMe ----------------
let g:ycm_autoclose_preview_window_after_completion=1


" ---------------- Syntastic -----------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




































