"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make vim work better.                                                   "
" Formatted for 80 character terminal                                     "
"                                                                         "
" Last update 01/07/22                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible      " Use vim rather than vi settings

" Make it look nice
set scrolloff   =3    " Keep cursor X lines away from top/bottom
set cmdheight   =2    " Make the command line X lines high
set laststatus  =2    " Enable the status line always
"set showmatch         " Briefly jump to matching brace on inserted

" Enable 256 colors
set t_Co=256

" Colorscheme fallback if nothing else installed
colorscheme elflord   " My favorite. Thanks S

" Improve Searching
set hlsearch          " Highlight the search term
set incsearch         " Search as characters are entered
set ignorecase        " Make search case insensitive
set smartcase         " Make search case sensitive if capital present

" Make it less annoying
" Apparently filetype needs to be off for some plugins
filetype on           " Automatic filetype detection
set number            " Line numbers on
"set relativenumber    " Set numbers relaative to current line
set ruler             " Turn on ruler
syntax on             " Syntax highlighting
set visualbell        " No sounds

" Set the window size
set lines       =30   " Set height
set columns     =85   " Set width
set numberwidth =4    " Add X spaces by number line

" Setup tabs
set shiftwidth  =4    " Make the following tab stop every X places
set tabstop     =4    " Use X spaces for tab
set softtabstop =4    " Make one backspace go back X places 
set expandtab         " Insert spaces instead of tabs 
                      " Insert a real tab with CTRL-V <tab>

" Scrolling
set scrolloff   =3    " Start scrolling when X lines away from margins
set sidescrolloff=15  " I think one of my other options messes this up 
set sidescroll  =1    " 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to the last known cursor position. Don't do it when the position   "
" is invalid or inside an event handler (happens when dropping a file     "
" on gvim).                                                               "
"                                                                         "
" Also don't do it when the mark is in the first line (default position)  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
    \ if line("'\"") >1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Make python nicer
set textwidth   =72   " Wrap text for an 80 column terminal
set autoindent        " Not sure if this works correctly in Big Sur
set fileformat  =unix " Store file in unix format to avoid conversion issues

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set viminfo file                                                        "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set viminfo='500,f1,<1000,:100,h,%
"            |   |  |     |    | |
"            |   |  |     |    | |
"            |   |  |     |    | +- Save and restore the buffer list(if a
"            |   |  |     |    |    file is not specified to open on the
"            |   |  |     |    |    command line
"            |   |  |     |    +--- Disable hlsearch when starting
"            |   |  |     +-------- Save X lines of command line history
"            |   |  +-------------- Use a maximimum of X lines per register
"            |   +----------------- Save global marks(A-Z and 0-9)(1=stored)
"            +--------------------- Save marks for X files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable vim-plug                                                         "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" Plugins must be downloaded under the specified directory.
" Uncomment the next line
call plug#begin('~/.vim/plugged') 

" Shorthand notation for list of plugins
" Uncomment the next line(s)
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'

" Initialize plugin system - plugins become visible to vim after this call
call plug#end()
