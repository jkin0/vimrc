set nocompatible
let mapleader = " "

set bg=dark

set number
set nu
set relativenumber

set tabstop=4
set softtabstop=4
set shiftwidth=4

set expandtab
set smartindent
set autoindent

set fileformat=unix

set nohlsearch
set noincsearch

set scrolloff=4
set updatetime=50

set cursorline
set encoding=utf-8

syntax enable

call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme gruvbox
let g:airline_theme="gruvbox"

:nnoremap <leader>n :NERDTreeToggle<CR>

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? asyncomplete#close_popup() . "\<cr>" : "\<cr>"
