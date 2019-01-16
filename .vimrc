""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" file created by me                     			        				 "
"																			 "	
" This makes vim work better.                                                "
" It also makes bacon.                                                       "	
"																			 "	
" Last update 01/10/19														 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible				" use vim rather than vi settings

" Make it look nice
set scrolloff			=3		" keep cursortwo lines away from top/bottom
set laststatus			=2		" enable the status line
set cmdheight			=2		" make the command line X lines high

set hlsearch                    " highlight the search term

" Make it less annoying
" apparently filetype needs to be off for some plugins
filetype on						" automatic filetype detection
set number						" linenumbers on
set ruler                       " turn on ruler
syntax on						" syntax highlighting
set visualbell					" no sounds

" Set the window size
set lines				=30		" set height
set columns				=85 	" set width
set numberwidth			=4		" add extra space by numbers

" Setup  my tabs
set shiftwidth			=4		" make the following tab stop every X places
set tabstop				=4		" use X spaces for tab
set softtabstop			=4		" make one backspace go back X places 
set expandtab			        " Inserts space characters when tab pressed
                                " Insert a real tab with CTRL_V <tab>

colorscheme desert				" muted, similar to elflord
"colorscheme koehler			" brighter than desert, same colors, bold
"colorscheme ron                 " similar to koehler, NOT BOLD
"colorscheme slate				" also good
"colorscheme delek 		
"colorscheme elflord             " shows keywords well in python
"colorscheme peachpuff           "
"colorscheme zellner              "

" scrolling
set scrolloff			=3	" start scrolling when  lines away from margins
set sidescrolloff		=15	" I think one of my other options messes this up 
set sidescroll			=1	" 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Jump to the last known cursor position. Don't do it when the position is 
" invalid or inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line (default position)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd BufReadPost *
    \ if line("'\"") >1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif




" make python easier
set textwidth =79   
set autoindent      " not sure if this works
set fileformat=unix " stores file in unix format to avoid conversion issues


" Make vim-plug work
" Specify a directory for plugins
" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" shorthand notation for list of plugins
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'

" Initialize plugin system - plugins become visible to vim after this call
call plug#end()

