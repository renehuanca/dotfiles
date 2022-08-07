syntax enable
set encoding=utf-8
set number
set relativenumber
set numberwidth=1
set nowrap
set mouse=a
set noswapfile
set sw=4
set tabstop=4

set bg=dark
set clipboard=unnamed
set laststatus=2
set noshowmode
set showcmd
set ruler

" ============== PLUGINS ============

" Path to install pluggins, excecute :PlugInstall
call plug#begin('~/.vim/plugged')

" Themes
Plug 'morhetz/gruvbox'

" Advanved search
Plug 'easymotion/vim-easymotion'

" Navigate and crud in files
Plug 'scrooloose/nerdtree'

" Navigate in windows and nerdtree, open a lot of windows, ctrl + hjkl
Plug 'christoomey/vim-tmux-navigator'

" Install autocompletes
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Finder files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

" Theme configuration
colorscheme gruvbox
let g:gruvbox_contrast_dark="hard"

" Close the nerdtree when open a file
let NERDTreeQuitOnOpen=1

" ============== SHORTCUTS ============
let mapleader=" "

" Search with space + two characters
nmap <Leader>s <Plug>(easymotion-s2)

" Open NerdTree with space + nt
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
imap jk <Esc>
