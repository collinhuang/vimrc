set nocompatible              " be iMproved, required
filetype off                  " required

" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 安装插件写在这之后
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'valloric/youcompleteme'
Plugin 'scrooloose/nerdtree'
Plugin 'yggdroot/indentline'
Plugin 'jiangmiao/auto-pairs'
" 安装插件写在这之前
call vundle#end()            " required
filetype plugin on    " required

" 常用命令
" :PluginList       - 查看已经安装的插件
" :PluginInstall    - 安装插件
" :PluginUpdate     - 更新插件
" :PluginSearch     - 搜索插件，例如 :PluginSearch xml就能搜到xml相关的插件
" :PluginClean      - 删除插件，把安装插件对应行删除，然后执行这个命令即可

" h: vundle         - 获取帮助
" vundle的配置到此结束，下面是你自己的配置。

"youcompleteme
let g:ycm_server_python_interpreter='/usr/bin/python'
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
" YCM相关快捷键，分别是\gl, \gf, \gg                                                    
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>              
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>               
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>

"indentLine
"缩进指示线"
let g:indentLine_enabled=1
let g:indentLine_char = '¦'

" NERDTree config 
" 打开/关闭 NERDTree
map <F2> :NERDTreeToggle<CR>
"显示书签
let NERDTreeShowBookmarks=1
"忽略文件类型
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"关闭 vim 的时候如果只剩下 NERDTree, 那么自动关闭 NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&b:NERDTreeType == "primary") | q | endif
"当没有指定文件打开时，自动打开 NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

set history=1000

"设置编码
set encoding=utf-8
set fileformat=unix
set fencs=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set fileencodings=utf-8,ucs-bom,chinese
 
"语言设置
set langmenu=zh_CN.UTF-8
 
"设置语法高亮
syntax enable
syntax on
 
"设置配色方案
"colorscheme torte
colorscheme desert
set t_Co=256
set wildmenu
 
"可以在buffer的任何地方使用鼠标
set mouse=a
set selection=exclusive
set selectmode=mouse,key
 
"高亮显示匹配的括号
set showmatch

"行号
set number
"显示标尺
set ruler

" 去掉有关vi一致性模式，避免以前版本的一些bug和局限，解决backspace不能使用的问题
set nocompatible
set backspace=indent,eol,start
set backspace=2
 
"设置缩进
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

"设置自动缩进
set autoindent
set cindent
set smartindent

" 共享剪贴板
set clipboard+=unnamed
" 文件被改动时自动载入
set autoread
" 顶部底部保持3行距离
set scrolloff=3
