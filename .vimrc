"   <F2>  <F3>        <F4>        <F5>                   <F6>              <F7>        <F8>              <F9>      <F10>
"   保存  退出                 打开/关闭树形目录    函数、变量分析                 显示/不显示行号    python运行   c运行



" 定义快捷键的前缀，即<Leader>
let mapleader=";"
" 开启文件类型侦测
filetype on
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $
" 设置快捷键将选中文本块复制至系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转
nmap <Leader>M %
" 让配置变更立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu

" vundle 环境设置
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
" vundle 管理的插件列表必须位于 vundle#begin() 和 vundle#end() 之间
call vundle#begin()

 Plugin 'VundleVim/Vundle.vim'
 Plugin 'altercation/vim-colors-solarized'
 Plugin 'tomasr/molokai'
 Plugin 'vim-scripts/phd'
 Plugin 'Lokaltog/vim-powerline'
 Plugin 'octol/vim-cpp-enhanced-highlight'
 Plugin 'nathanaelkane/vim-indent-guides'
 Plugin 'derekwyatt/vim-fswitch'
 Plugin 'kshenoy/vim-signature'
 Plugin 'majutsushi/tagbar'
 Plugin 'vim-scripts/indexer.tar.gz'
 Plugin 'vim-scripts/DfrankUtil'
 Plugin 'vim-scripts/vimprj'
 Plugin 'dyng/ctrlsf.vim'
 Plugin 'terryma/vim-multiple-cursors'
 Plugin 'scrooloose/nerdcommenter'
 Plugin 'vim-scripts/DrawIt'
 Plugin 'SirVer/ultisnips'
 Plugin 'Valloric/YouCompleteMe'
 Plugin 'derekwyatt/vim-protodef'
 Plugin 'scrooloose/nerdtree'
 Plugin 'fholgado/minibufexpl.vim'
 Plugin 'gcmt/wildfire.vim'
 Plugin 'sjl/gundo.vim'
 Plugin 'Lokaltog/vim-easymotion'
 Plugin 'suan/vim-instant-markdown'
 Plugin 'vim-scripts/Mark-and-Highlight-Full-Lines' 
 Plugin 'Lokaltog/vim-distinguished'
 Plugin 'nanotech/jellybeans.vim'
 Plugin 'tpope/vim-vividchalk'
 Plugin 'kien/ctrlp.vim'
 Plugin 'ack.vim'
 Plugin 'taglist.vim'

 Plugin 'easygrep'
 Plugin 'python_fold'



" 插件列表结束
call vundle#end()
filetype plugin indent on

" 配色方案
set background=dark
"colorscheme solarized
"colorscheme molokai

"colorscheme solarized
"colorscheme molokai
"colorscheme phd

"colorscheme distinguished

colorscheme jellybeans

"colorscheme vividchalk

" "colorscheme phd
set t_Co=256

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" 将外部命令 wmctrl 控制窗口最大化的命令行参数封装成一个 vim 的函数
fun! ToggleFullscreen()
	    call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
    endf
    " 全屏开/关快捷键
    map <silent> <F11> :call ToggleFullscreen()<CR>
    " 启动 vim 时自动全屏
    "autocmd VimEnter * call ToggleFullscreen()

" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch

" 设置 gvim 显示字体
set guifont=YaHei\ Consolas\ Hybrid\ 11.5

" 禁止折行
set wrap
" 设置状态栏主题风格
let g:Powerline_colorscheme='solarized256'

" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
syntax keyword cppSTLtype initializer_list

" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=2
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4

let &termencoding=&encoding
set fileencodings=utf-8,gbk

set ai!     " 设置自动缩进 
set autoindent
" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle

" 基于缩进或语法进行代码折叠
set foldmethod=indent
set foldmethod=syntax
" 启动 vim 时关闭折叠代码
set nofoldenable

" Highlight current line
"au WinLeave * set nocursorline nocursorcolumn
"au WinEnter * set cursorline cursorcolumn
"set cursorline cursorcolumn
nnoremap <silent> <F5> :NERDTreeToggle<CR>
"按F5可以打开/关闭树形目录
"let NERDChristmasTree=0
let NERDTreeWinSize=20
"let NERDTreeChDirMode=2
"let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
"let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
" Automatically open a NERDTree if no files where specified
" autocmd vimenter * if !argc() | NERDTree | endif
" " Close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") &&
" b:NERDTreeType == "primary") | q | endif
"let g:miniBufExplMapCTabSwitchBufs = 1

" Tagbar
let g:tagbar_width=20
let g:tagbar_autofocus=1
nmap <F6> :TagbarToggle<CR>

" ctrap
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.png,*.jpg,*.jpeg,*.gif "
" MacOSX/Linux
"let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$

if executable('ag')
      " Use Ag over Grep
         set grepprg=ag\ --nogroup\ --nocolor
           " Use ag in CtrlP for listing files.
             let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
        " Ag is fast enough that CtrlP doesn't need to cache
         let g:ctrlp_use_caching = 0
         endif

set laststatus=2 " Always display the status line

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8
"set cindent

set mouse=a
set pastetoggle=<F7>
"设置了粘贴模式就无法自动缩进代码
"set paste
map <F8> :set nu!<CR>
map <F2> :w<CR>
map <F3> :q<CR>

set tags=tags;    "   其中 ; 不能没有
set autochdir

if filereadable("cscope.out") 
    cs add cscope.out 
endif 

if has("cscope")
            set cscopetag   " 使支持用 Ctrl+]  和 Ctrl+t 快捷键在代码间跳来跳去
            " check cscope for definition of a symbol before checking ctags:
            " set to 1 if you want the reverse search order.
             set csto=1

             " add any cscope database in current directory
             if filereadable("cscope.out")
                 cs add cscope.out
             " else add the database pointed to by environment variable
             elseif $CSCOPE_DB !=""
                 cs add $CSCOPE_DB
             endif

             " show msg when any other cscope db added
             set cscopeverbose

             nmap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
             nmap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
             nmap <C-/>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
             nmap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>
         endif


"Python  按F9编译运行
map  <F9> :call CompileRunPython()<CR>
    func! CompileRunPython()
        exec "!python *.py"
    endfunc


"C++    按F10编译运行
map  <F10> :call CompileRunCPP()<CR>
    func! CompileRunCPP()
        exec "!gcc *.c -o app"
        exec "!./app"
    endfunc

" 自动补全配置
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1	" 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2	" 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0	" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1	" 语法关键字补全
"nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>	"force recomile with syntastic
"nnoremap <leader>lo :lopen<CR>	"open locationlist
"nnoremap <leader>lc :lclose<CR>	"close locationlist
inoremap <leader><leader> <C-x><C-o>
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
