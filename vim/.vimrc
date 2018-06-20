" ============
" Setup Vundle
" ============

set nocompatible      " Required for vundle
filetype off          " Required for vundle

set rtp+=~/.vim/bundle/Vundle.vim

" ===============
" Install Bundles
" ===============
let g:python_host_prog='/usr/bin/python'

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'           " Init vundle
Plugin 'vim-airline/vim-airline'        " Status bar at bottom
Plugin 'vim-airline/vim-airline-themes' " Status bar at bottom
Plugin 'sheerun/vim-polyglot'           " Syntax for 70+ languages
Plugin 'morhetz/gruvbox'                " Colorscheme
Plugin 'Valloric/YouCompleteMe'         " Autocompletion
Plugin 'ternjs/tern_for_vim'            " Autocompletion for JS
Plugin 'airblade/vim-gitgutter'         " Git status in gutter
Plugin 'ctrlpvim/ctrlp.vim'             " Fuzzy file finder
call vundle#end()


" =================
" Configure Airline
" =================

"let g:airline_powerline_fonts = 1   " Use powerline fonts
let g:airline_theme='gruvbox'       " Make airline match colorscheme

" ============
" Color Scheme
" ============

"set termguicolors
syntax enable
set t_Co=256                        " 256 bit color
set background=dark                 " dark backrgound
let g:gruvbox_contrast_dark='hard'  " Extra bold colors
let g:gruvbox_italic=1              " Ensure gruvbox uses italics
colorscheme gruvbox
set list                            " Highlight unwanted chars
set listchars=tab:>-,trail:~,extends:>,precedes:<
set colorcolumn=80                  " Draw line at this character limit
match SpellBad /\s\+$/              " Highlight trailing spaces in red

" =========
" Searching
" =========

set incsearch             " realtime search while typeing
set hlsearch              " highlight matches
set ignorecase            " ignore case while searching

" ========
" Movement
" ========

" Next 4 lines cause vim to act sanely when moving aroun a wrapped line
noremap  <buffer> <silent> k gk
noremap  <buffer> <silent> j gj
noremap  <buffer> <silent> 0 g0
noremap  <buffer> <silent> $ g$
set wrap lbr            " Wrap long lines between words
set number              " show line numbers
set relativenumber      " show line numbers counting away from cursor
set showcmd             " show current command
set showmatch           " highlight matching brackets
set scrolloff=5         " Minimum number of lines kept above above/below cursor

" ===========
" Indentation
" ===========

filetype plugin indent on " indents based on filetype
set tabstop=2           " 2 spaces per tab
set shiftwidth=2        " indentation
set expandtab           " tabs are Spaces
set autoindent          " Carry indents forward to newlines
set cindent             " Make autoindent context aware


" ============
" Code Folding
" ============

set foldenable          " enable code folding
set foldlevelstart=10   " don't fold code by default
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indents
" Space bar for code folding:
nnoremap <space> za


" =================
" Fuzzy File Finder
" =================

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ===================
" Syntax highlighting
" ===================

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['eslint']

" ==================
" Per Project Config
" ==================

set exrc
set secure
