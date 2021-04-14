" Enable filetype plugins
filetype plugin on
filetype indent on

"map Esc key to 'jj'
imap jj <Esc>

nnoremap Z <C-o>:echom "--> :w :q <-- "<CR>
nnoremap ZZ <C-o>:echom "--> :w :q <-- "<CR>
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>

" Switch between tabs
nnoremap <Right> gt
nnoremap <Left>  gT

inoremap <Up>     <C-o>:echom "--> k <-- "<CR>
inoremap <Down>   <C-o>:echom "--> j <-- "<CR>
inoremap <Right>  <C-o>:echom "--> l <-- "<CR>
inoremap <Left>   <C-o>:echom "--> h <-- "<CR>

" Easier Moving between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Make windows to be basically the same size
nnoremap <leader>= <C-w>=

" Sizing window horizontally
nnoremap <c-,> <C-W><
nnoremap <c-.> <C-W>>
nnoremap <A-,> <C-W>5<
nnoremap <A-.> <C-W>5>

" Sizing window vertically
" taller
nnoremap <A-t> <C-W>+
" shorter
nnoremap <A-s> <C-W>-

"syntax hightlighting
syntax on  
 
" tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

" closing brace {}
inoremap {} {<CR>}<Esc>ko
inoremap { {   }<Esc>hhi
inoremap {{   {{   }}<Esc>hhhi


"line number
set number  

"no compatibility to Vi
set nocompatible 

set ruler " Show file stats

" reletive line numbers
set relativenumber
set nu
set nowrap "no wrap when line exceeds screen  
set smartcase "case-sensitive search if search patter contains uppercase character 
set noswapfile

set nobackup
set undodir=~/.vim/undodir
set undofile

" Turn on the Wild menu
"set wildmenu

" Highlight search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set incsearch "incremental search

" highlight current line with underline
"set cursorline

" execute project specific .vimrc
"set exrc
