set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')
Plug 'connorholyday/vim-snazzy'
Plug 'VundleVim/Vundle.vim'
Plug 'vim-airline/vim-airline'
Plug 'https://github.com/kshenoy/vim-signature'
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Initialize plugin system
call plug#end()
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on    " required
color snazzy
let g:SnazzyTransparent = 1
" ===
let mapleader=" "
noremap <LEADER><CR> :nohlsearch<CR>
set hls
set nu
set rnu
set tabstop=4 
set shortmess=atI "wuganda"
set encoding=utf-8
set wildmenu
set ignorecase
set smartcase
set list
set listchars=tab:▸\ ,trail:▫
set foldmethod=indent
" 显示中文帮助
if version >= 603
	set helplang=cn
	set encoding=utf-8
endif
"set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%d/%m/%y\ -\ %H:%M\")}   "状态行显示的内容
"set laststatus=2
set showcmd " 输入的命令显示出来，看的清楚些
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif  "回到上次的修改地方
set scrolloff=3
set cursorline
syntax on
filetype on        "检测文件的类型 
set history=1000                  "记录历史的行数
set autoindent                       "vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set cindent                             "（cindent是特别针对 C语言语法自动缩进）
set smartindent                    "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set shiftwidth =4                   "设置当行之间交错时使用4个空格
set ai                                      " 设置自动缩进
set showmatch                     "设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set ruler                                  "在编辑过程中，在右下角显示光标位置的状态行
set incsearch
set autochdir
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>
map <C-n> :tabe 
"修改一个文件后，自动进行备份，备份的文件名为原文件名加“~”后缀
if has("vms")
	set nobackup
else
	set backup
endif
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "dm-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "dm/",
        \ 'PurgeMarkers'       :  "dm?",
        \ 'GotoPrevLineAlpha'  :  "",
        \ 'GotoPrevSpotAlpha'  :  "",
        \ 'GotoNextLineByPos'  :  "",
        \ 'GotoPrevLineByPos'  :  "",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "",
        \ 'GotoPrevMarker'     :  "",
        \ 'GotoNextMarkerAny'  :  "",
        \ 'GotoPrevMarkerAny'  :  "",
        \ 'ListLocalMarks'     :  "m/"
        \       }


