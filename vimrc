set autoindent
set shiftwidth=4
set autoindent
"set cursorline
set number
set expandtab
set tabstop=4
set t_Co=256
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
set backspace=2
set foldlevelstart=99
set foldmethod=manual
syntax on


set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
"" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"
Plugin 'Mizuchi/STL-Syntax'
Plugin 'vim-scripts/a.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vim-scripts/delimitMate.vim'
Plugin 'tpope/vim-surround'
Plugin 'altercation/vim-colors-solarized'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'MikeCoder/markdown-preview.vim'
"Plugin 'suan/vim-instant-markdown'
Bundle 'majutsushi/tagbar'
Bundle 'wannesm/wmgraphviz.vim'



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/ycm_extra_conf.py' 
let g:ycm_collect_identifiers_from_tag_files = 1 "使用ctags生成的tags文件
let g:syntastic_cpp_compiler = 'g++'  "change the compiler to g++ to support c++11 
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libc++' "set the options of g++ to suport
let mapleader = ","  " 这个leader就映射为逗号“，”
nnoremap <Leader>jd :YcmCompleter GoToDefinition<CR>   "跳转到定义
nnoremap <Leader>js :YcmCompleter GoTo<CR>   "跳转到变量声明
nnoremap <Leader>jg :YcmCompleter GoToDeclaration<CR>   "跳转到函数声明
nnoremap <Leader>jt :YcmCompleter GetType<CR>   "获得变量类型
nnoremap <Leader>jr :Ack <CR> ../ "查询单词
"nnoremap <leader>pg: YcmCompleter GoToDefinitionElseDeclaration<CR>   "按,jd 会跳转到定义

" for powerline
set laststatus=2   " Always show the statusline

"let g:molokai_original = 1
"let g:rehash256 = 1
set background=dark
"colorscheme solarized

"Multip Cursor
"Default key mapping
let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'
if !has('gui_running')
      map "in Insert mode, type Ctrl+v Alt+n here" <A-n>
endif

let g:instant_markdown_slow = 1

"tagbar
nmap <F8> :TagbarToggle<CR>
"打开文件自动 打开tagbar  
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()  
set tags+=/Users/tomwang/Documents/Work/Code/bitcoin/src/tags
nmap <Leader>lv :w<CR> :!dot -Tpng -o %<.png %<CR> :!open %<.png<CR>
