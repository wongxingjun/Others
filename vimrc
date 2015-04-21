syntax on
set nocompatible " be iMproved
set shortmess=atI "No splash screen
set history=300
set number
set nuw=1
"highlight LineNr guifg=gray
"hi linenr ctermfg=darkgray
set background=light
set relativenumber
set modeline

set clipboard+=unnamed
set showmatch
set confirm
set noswapfile
set backspace=2
set tabstop=4
set shiftwidth=4
set completeopt=menu
colorscheme molokai 
set cindent
set smartindent
set ruler
set report=0
set showcmd
set foldenable
set foldmethod=manual
set go=

set incsearch
set hlsearch

set cursorline 
hi CursorLine cterm=NONE ctermbg=black ctermfg=NONE  guibg=NONE guifg=NONE
"set cursorcolumn 

"YouCompleteMe Plugin. Code auto complete.
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/syntastic'
" Bundle 'The-NERD-Commenter'
" Bundle 'The-NERD-Tree'
"Bundle 'tomasr/molokai'

""""""""""syntastic""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
"set error or warning signs
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
"whether to show balloons
let g:syntastic_enable_balloons = 1
""""""""""""YCM""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_confirm_extra_conf = 0

"Markdown
Plugin 'tpope/vim-markdown'

"color scheme
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'

