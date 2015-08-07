set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set t_Co=256
set number
set ruler
set autowriteall
set autoread
" To allow backspace in autoindent
set backspace=2
" Handle search highlight
" set hlsearch
" nnoremap <esc> :noh<return><esc>
"if &term =~ '^xterm'
  " solid underscore
  let &t_SI .= "\<Esc>[4 q"
  " solid block
  let &t_EI .= "\<Esc>[2 q"
  " 2 solid block
  " 1 or 0 -> blinking block
  " 3 -> blinking underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
"endif

set nocompatible               " be iMproved
filetype off                   " required!
set nocp
set bs=indent,eol,start
syntax on
set tags+=gems.tags

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'croaky/vim-colors-github'
Bundle 'tpope/vim-sleuth.git'
Bundle 'kien/ctrlp.vim'
Bundle 'rking/ag.vim'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'mattn/gist-vim'

" This takes care of snippets but needs work
" Plugin 'garbas/vim-snipmate'
Plugin 'mustache/vim-mustache-handlebars'

Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

" enchance autocomplete of vim-ruby and vim-rails
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

call vundle#end()             " required!
filetype plugin indent on     " required!

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

