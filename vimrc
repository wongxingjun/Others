syntax on
set nocompatible " be iMproved
set shortmess=atI "No splash screen
set history=300
set number
set nuw=1
"highlight LineNr guifg=gray
"hi linenr ctermfg=darkgray
"set relativenumber
set modeline

set clipboard+=unnamed
set showmatch
set confirm
set noswapfile
set backspace=2
set tabstop=4
set shiftwidth=4
set completeopt=menu
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
Bundle 'tpope/vim-commentary'


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

""""""""""""Nerd-tree"""""""""""""""
Bundle 'scrooloose/nerdtree'
"nmap <leader>nt :NERDTree<CR>
" 设置NerdTree
map <F3> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=[ '\.pyc$', '\.pyo$', '\.obj$', '\.o$', '\.so$', '\.egg$', '^\.git$', '^\.svn$', '^\.hg$' ]
let g:netrw_home='~/bak'
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | end

""""""""""""YCM""""""""""""""""""""
"Don't show ycm_extra_conf checking info
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
"Open identing based on tags
let g:ycm_collect_identifiers_from_tags_files = 1
"Open syntax identifiers
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_cache_omnifunc = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

"自动补全单引号，双引号等
Bundle 'Raimondi/delimitMate'
" for python docstring ",优化输入
au FileType python let b:delimitMate_nesting_quotes = ['"']

"快速插入代码片段
Bundle 'SirVer/ultisnips'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
"定义存放代码片段的文件夹 .vim/snippets下，使用自定义和默认的，将会的到全局，有冲突的会提示
let g:UltiSnipsSnippetDirectories=["snippets", "bundle/ultisnips/UltiSnips"]

""""""""""快速注释"""""""""
Bundle 'scrooloose/nerdcommenter'
let NERDSpaceDelims = 1

"Markdown
Plugin 'tpope/vim-markdown'


"scala
Bundle 'derekwyatt/vim-scala' 


"color scheme
set background=dark
Plugin 'tomasr/molokai'
Plugin 'flazz/vim-colorschemes'
Bundle 'altercation/vim-colors-solarized'
"let g:solarized_termcolors = 256
let g:solarized_termtrans = 1
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"
"colorscheme molokai 
colorscheme solarized


"author information auto adding
Bundle 'dantezhu/authorinfo'
let g:vimrc_author='Xingjun Wang'
let g:vimrc_email='wongxingjun@gmail.com'
nmap <F4> :AuthorInfoDetect<cr>

""""""""""自动补全括号""""""""""
