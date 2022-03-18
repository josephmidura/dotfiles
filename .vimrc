"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make vim work better.                                                   "
" Formatted for 80 character terminal                                     "
"                                                                         "
" Last update 03/18/22                                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible      " Use vim rather than vi settings

" Set termguicolors for color schemes that need it
" Linux has termguicolors but it ruins the colors.
if has('termguicolors') && (has('mac') || has('win32'))
    set termguicolors
endif

" Colorscheme fallback if nothing else installed
colorscheme elflord   " My favorite
set background=dark   " Use dark backgrounds
set t_Co=256          " Enable 256 colors

" Enable italics support in terminal
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"

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

" Make it look nice
set scrolloff   =3    " Keep cursor X lines away from top/bottom
set cmdheight   =2    " Make the command line X lines high
set laststatus  =2    " Enable the status line always
"set showmatch         " Briefly jump to matching brace on inserted
"set nowrap            " Text doesn't wrap by default

" Set the window size
set lines       =30   " Set height
set columns     =100  " Set width
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
set textwidth   =96   " Wrap text for an 80 column terminal
set autoindent        " Autoindent on
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

" Commands
" PlugUpgrade - Update vim-plug itself
" PlugStatus  - Check status of plugins
" PlugUpdate  - Update plugins
" See more here: https://github.com/junegunn/vim-plug

" Specify a directory for plugins i.e. ~/.vim/plugged
" Plugins must be downloaded under the specified directory.

" Uncomment to enable vim plug
call plug#begin('~/.vim/plugged')

" Shorthand notation for list of plugins.
Plug 'itchyny/lightline.vim'
"Plug 'preservim/nerdtree'
Plug 'gruvbox-community/gruvbox'
Plug 'leafgarland/typescript-vim'

" Initialize plugin system - plugins become visible to vim after this call
call plug#end()

" Enable gruvbox colors
colorscheme gruvbox

" Enable cterm italics support. This must be after colorschme is loaded
highlight Comment cterm=italic

