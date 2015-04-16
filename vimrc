set nocompatible
set number
filetype plugin indent on
syntax on

" Initialisation de pathogen
call pathogen#infect()
call pathogen#helptags()

runtime! config/**/*.vim
