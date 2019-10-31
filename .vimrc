set nocompatible              " be iMproved, required
filetype on                  " required
syntax on
set showmatch
set hlsearch
" 设置tab个数
set tabstop=4
" 设置显示行号
set nu
" 设置显示当前行
set cursorline
" 启用vundle来管理vim插件
set rtp+=~/.vim/bundle/Vundle.vim
" 退出插入模式指定类型的文件自动保存
au InsertLeave *.go,*.sh,*.php write
call vundle#begin()
" 安装插件写在这之后
Plugin 'dgryski/vim-godef'
" 快速对齐插件
Plugin 'junegunn/vim-easy-align'
" 用来提供一个导航目录的侧边栏
Plugin 'scrooloose/nerdtree'
" 可以在导航目录中看到git版本信息
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'Blackrush/vim-gocode'
Plugin 'majutsushi/tagbar'
Plugin 'ianva/vim-youdao-translater'
" 可以使 nerdtree 的 tab 更加友好
Plugin 'jistr/vim-nerdtree-tabs'
" 自动括号补全
Plugin 'jiangmiao/auto-pairs'
" vim 自动 tab 补全
Plugin 'vim-scripts/SuperTab'
Plugin 'plasticboy/vim-markdown'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

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
" 开启导航🌲️功能
" autocmd vimenter * NERDTree
" 导航🌲️快捷键
map <C-n> :NERDTreeToggle<CR>
" 导航🌲️只需要关闭一遍
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" 有道翻译快捷键
vnoremap <silent> <C-T> :<C-u>Ydv<CR>
nnoremap <silent> <C-T> :<C-u>Ydc<CR>
noremap <leader>yd :<C-u>Yde<CR>
