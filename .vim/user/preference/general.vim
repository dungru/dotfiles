"##############
"# preference #
"##############
set encoding=utf-8
set fileformat=unix
set autoindent
set noswapfile
" set mouse=a
" make backspace work like most other apps
set backspace=2
" use system clipboard
" set clipboard=unnamed
" trim trailing white space on save
autocmd BufWritePre * :%s/\s\+$//e
" all folds open when opening a file
set foldmethod=syntax
set foldlevel=46
filetype plugin indent on
syn on se title
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
set list listchars=tab:»\ ,trail:.,extends:»,precedes:«
set ai
let &t_TI = ""
let &t_TE = ""
"##############
"#   themes   #
"##############
set t_Co=256
set hlsearch
set nu
set laststatus=2
let g:fakeclip_terminal_multiplexer_type = 'tmux'


"#####################
"#       BASIC       #
"#####################
" BASIC SETUP:

" enter the current millenium
set nocompatible

" enable syntax and plugins (for netrw)
syntax enable
filetype plugin on

"#####################
"# Fuzzy File Search #
"#####################
" FINDING FILES:

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

" NOW WE CAN:
" - Hit tab to :find by partial match
" - Use * to make it fuzzy

" THINGS TO CONSIDER:
" - :b lets you autocomplete any open buffer


"###################
"#  TAG JUMPING:   #
"###################
" TAG JUMPING:

" Create the `tags` file (may need to install ctags first)
command! MakeTags !ctags -R .

" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" THINGS TO CONSIDER:
" - This doesn't help if you want a visual list of tags
"###################
"#  AUTOCOMPLETE:  #
"###################
" The good stuff is documented in |ins-completion|

" HIGHLIGHTS:
" - ^x^n for JUST this file
" - ^x^f for filenames (works with our path trick!)
" - ^x^] for tags only
" - ^n for anything specified by the 'complete' option

" NOW WE CAN:
" - Use ^n and ^p to go back and forth in the suggestion list

"#####################
"#  FILE BROWSING:   #
"#####################
" Tweaks for browsing
let g:loaded_netrw = 1
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_winsize = 15    " fixed with the netrw_browse_split
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'
"augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
"augroup END
" NOW WE CAN:
" - :edit a folder to open a file browser
" - <CR>/v/t to open in an h-split/v-split/tab
" - check |netrw-browse-maps| for more mappings

