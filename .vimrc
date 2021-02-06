""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Make vim work better.                                                      "
" Uncomment end of this file for lightline and other plugins                 "
" Last update 02/05/21														 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible				" Use vim rather than vi settings

" Make it look nice
set scrolloff			=3		" Keep cursortwo lines away from top/bottom
set laststatus			=2		" Enable the status line
set cmdheight			=2		" Make the command line X lines high

set hlsearch                    " Highlight the search term

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
set expandtab			        " Inserts space characters when tab pressed
                                " Insert a real tab with CTRL_V <tab>

"colorscheme desert				" Muted, similar to elflord
"colorscheme koehler			" Brighter than desert, same colors, bold
"colorscheme ron                " Similar to koehler, NOT BOLD
"colorscheme slate				" Also good
"colorscheme delek 		
colorscheme elflord             " Generally the best. Thanks S
"colorscheme peachpuff          " Good for dark rooms
"colorscheme zellner            "

" Scrolling
set scrolloff			=3	    " Start scrolling when  lines away from margins
set sidescrolloff		=15	    " I think one of my other options messes this up 
set sidescroll			=1	    " 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to the last known cursor position. Don't do it when the position is 
" invalid or inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line (default position)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
    \ if line("'\"") >1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

" Make python nicer
set textwidth =79   
set autoindent                  " Not sure if this works correctly in Big Sur
set fileformat=unix             " Stores file in unix format to avoid conversion issues

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

