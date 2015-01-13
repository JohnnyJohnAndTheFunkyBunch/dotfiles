"for pathogen plugin management
execute pathogen#infect()
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set ignorecase "Ignore case when searching
set smartcase
set incsearch "Incremental search"
set nolazyredraw "Don't redraw while executing macros"
set hlsearch
set cursorline
set ruler

set vb "no visual bell"
set t_vb= "no visual bell"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set ts=4
set expandtab
set shiftwidth=4
"set autoindent
"set smartindent
filetype indent off


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


set modeline
set bs=2
set ls=2

set t_Co=256
"colorscheme koehler
let g:solarized_termcolors=256
set background=dark

set tags=tags;/

map <F6> :set nu!<CR>
imap <F6> <ESC>:set nu!<CR>a
"map <F9> :w !python <CR>
"map <F9> :w !node <CR>
map <F9> :w !npm start <CR>
"map <F9> :w !go install <CR>
map <F10> :w !go run % <CR>
map <F8> :w !pdflatex % <CR>

nnoremap <space> za
vnoremap <space> zf

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun

let maplocalleader = "\\"

set rtp+=/usr/local/go/misc/vim
syntax on
filetype plugin on
"filetype indent on
let vimrplugin_assign = 0
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Jonathan
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
set nu
nmap j gj
nmap k gk

" Go lang


