set nocompatible              " be iMproved, required
filetype on                  " required
syntax on
syntax enable
" 文件类型检测
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" 搜索相关
set incsearch
set hlsearch
set cursorline
set scrolloff=5

set ignorecase
set smartcase
set showmatch
" 设置tab个数
set tabstop=4
" 设置显示行号
set nu
" 设置当前行号
set relativenumber
" 设置显示当前行
set rtp+=/usr/local/opt/fzf
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
" vim 配色
Plugin 'connorholyday/vim-snazzy'
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
Plugin 'ycm-core/YouCompleteMe'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-surround'
Plugin 'rizzatti/dash.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Markdown 相关
Plugin 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plugin 'plasticboy/vim-markdown'

Plugin 'tpope/vim-fugitive'

" fzf相关
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" 安装插件写在这之前
call vundle#end()            " required

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
" 保存和退出
map Q :q<CR>
map S :w<CR>
noremap L 5l
noremap J 5j
noremap K 5k
noremap H 5h

" MarkdownPreview 配置
" ===
" === MarkdownPreview
" ===
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_open_ip = ''
"let g:mkdp_browser = 'chrome'
let g:mkdp_echo_preview_url = 0
let g:mkdp_browserfunc = ''
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1
    \ }
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = ''
let g:mkdp_port = ''
let g:mkdp_page_title = '「${name}」'

" ==
" == vim-multiple-cursor
" ==
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<c-k>'
let g:multi_cursor_select_all_word_key = '<a-k>'
let g:multi_cursor_start_key           = 'g<c-k>'
let g:multi_cursor_select_all_key      = 'g<a-k>'
let g:multi_cursor_next_key            = '<c-k>'
let g:multi_cursor_prev_key            = '<c-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'

let g:vimwiki_list = [{
  \ 'automatic_nested_syntaxes':1,
  \ 'path_html': '~/wiki_html',
  \ 'path': '~/wiki',
  \ 'template_path': '~/.vim/vimwiki/template/',
  \ 'syntax': 'markdown',
  \ 'ext':'.md',
  \ 'template_default':'markdown',
  \ 'custom_wiki2html': '~/.vim/vimwiki/wiki2html.sh',
  \ 'template_ext':'.html'
\}]

au BufRead,BufNewFile *.md set filetype=vimwiki

let g:taskwiki_sort_orders={"C": "pri-"}
let g:taskwiki_syntax = 'markdown'
let g:taskwiki_markdown_syntax='markdown'
let g:taskwiki_markup_syntax='markdown'
source ~/.vim/snippits.vim
" 设置配色
colorscheme snazzy
" fzf


"设置指针样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\""

" Airline 配置
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
