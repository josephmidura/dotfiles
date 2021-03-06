""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make vim work better.                                                      "
"                                                                            "
" Last update 02/20/21														 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible				" Use vim rather than vi settings

" Make it look nice
set scrolloff			=3		" Keep cursortwo lines away from top/bottom
set cmdheight			=2		" Make the command line X lines high

" Colorschemes
colorscheme elflord             " Generally the best. Thanks S
"colorscheme desert				" Muted, similar to elflord
"colorscheme koehler			" Brighter than desert, same colors, bold
"colorscheme ron                " Similar to koehler, NOT BOLD
"colorscheme slate				" ???
"colorscheme delek 		

" Improve Searching
set hlsearch                    " Highlight the search term
set incsearch                   " Search as characters are entered


set laststatus			=2		" Enable the status line

" Make it less annoying
" Apparently filetype needs to be off for some plugins
filetype on						" Automatic filetype detection
set number						" Line numbers on
set ruler                       " Turn on ruler
syntax on						" Syntax highlighting
set visualbell					" No sounds

" Set the window size
set lines				=30		" Set height
set columns				=85 	" Set width
set numberwidth			=4		" Add extra space by number line

" Setup tabs
set shiftwidth			=4		" Make the following tab stop every X places
set tabstop				=4		" Use X spaces for tab
set softtabstop			=4		" Make one backspace go back X places 
set expandtab			        " Inserts spaces instead of tabs 
                                " Insert a real tab with CTRL-V <tab>

" Scrolling
set scrolloff			=3	    " Start scrolling when  lines away from margins
set sidescrolloff		=15	    " I think one of my other options messes this up 
set sidescroll			=1	    " 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to the last known cursor position. Don't do it when the position is   "
" invalid or inside an event handler (happens when dropping a file on gvim). "
" Also don't do it when the mark is in the first line (default position)     "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
    \ if line("'\"") >1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Make python nicer
set textwidth           =79   
set autoindent                  " Not sure if this works correctly in Big Sur
set fileformat          =unix   " Store file in unix format to avoid conversion issues

" Make vim-plug work
" Specify a directory for plugins
" Plugins will be downloaded under the specified directory.
" UNCOMMENT THE NEXT LINE
"call plug#begin('~/.vim/plugged')

" shorthand notation for list of plugins
" UNCOMMENT THE NEXT LINE
"Plug 'itchyny/lightline.vim'
"Plug 'itchyny/landscape.vim'   " Colorscheme

" Initialize plugin system - plugins become visible to vim after this call
"call plug#end()

