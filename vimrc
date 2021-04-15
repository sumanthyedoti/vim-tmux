" Enable filetype plugins
filetype plugin on
filetype indent on:

syntax on  " syntax hightlighting

"map Esc key to 'jj'
imap jj <Esc>
let mapleader = " "  " map leader key (\) to Space bar

" Disbale 'ZZ' command to save and quit
nnoremap Z <C-o>:echom "--> :w :q <-- "<CR>
nnoremap ZZ <C-o>:echom "--> :w :q <-- "<CR>
" hide search(find) highlight
nnoremap <leader>nf :nohl<CR>
" move file up and down with arrows
nnoremap <Up> <C-y>
nnoremap <Down> <C-e>
" Switch between tabs
nnoremap <Right> gt
nnoremap <Left>  gT
" split window navigation
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

inoremap <Up>     <C-o>:echom "--> k <-- "<CR>
inoremap <Down>   <C-o>:echom "--> j <-- "<CR>
inoremap <Right>  <C-o>:echom "--> l <-- "<CR>
inoremap <Left>   <C-o>:echom "--> h <-- "<CR>
" closing brace {}
inoremap {} {<CR>}<Esc>ko
inoremap { {   }<Esc>hhi
inoremap {{   {{   }}<Esc>hhhi
inoremap ( ()<Esc>i

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

" tabs
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set number  " line number
set nocompatible   "no compatibility to Vi
set ruler " Show file stats
set relativenumber  " reletive line numbers
set nowrap "no wrap when line exceeds screen  
set smartcase "case-sensitive search if search patter contains uppercase character 
" Persist changes in undodir. Can access the changes even after reboot
set noswapfile
set nobackup
set undofile
set undodir=~/.vim/undodir
"set wildmenu  " Turn on the Wild menu
set colorcolumn=80
set hlsearch  " Highlight search results
set showmatch  " Show matching brackets when text indicator is over them
set mat=2  " How many tenths of a second to blink when matching brackets
set incsearch " incremental search
set scrolloff=4  " scroll offset
set cmdheight=2
set signcolumn=yes
"set cursorline  " highlight current line with underline
"set exrc  " execute project specific .vimrc

" To derive project root
if executable('rg')
    let g:rg_derive_root='true'
endif

"let g:netrw_banner = 0  " no help information at top

call plug#begin('~/.vim/plugged')
" Make sure you use single quotes
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'chemzqm/vim-jsx-improve'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Themes
Plug 'arcticicestudio/nord-vim'
Plug 'morhetz/gruvbox'
call plug#end()

let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver']

" Toggle NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

nnoremap <leader>ut :UndotreeToggle<CR>
nnoremap <C-p> :GFiles<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

nmap <leader>gd <Plug>(coc-defination)
nmap <leader>gr <Plug>(coc-references)
source $HOME/.vim/coc.vim

colorscheme gruvbox " 'nord', 'gruvbox'
set bg=dark  " 'dark', 'light'


" Auto commands
" -------------
" Close nvim if NERDTree is only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

