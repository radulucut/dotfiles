set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'andreasvc/vim-256noir'
Plugin 'tpope/vim-surround'
Plugin 'leafgarland/typescript-vim'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

colorscheme 256_noir

set background=dark
set number
set t_Co=256

syntax on

