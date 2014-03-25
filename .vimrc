"========================================================================
"   FileName: .vimrc
"     Author: rjjacky
"      Email: rjjacky@gmail.com
"   HomePage: 
" LastChange: 2013-11-07 09:03:51
"========================================================================

" Ctrl + H                   --光标移行首
" Ctrl + J                   --光标移下一行行首
" Ctrl + K                   --光标移上一行行尾
" Ctrl + L                   --光标移行尾
" Ctrl + Z                   --取代ESC模式键 [和部分软件的快捷键有冲突]
"""""""" Ctrl + F                   --编译 [支持C/C++、Java、Haskell]
"""""""" Ctrl + R                   --运行 [支持C/C++、Java、Haskell、Lua、Perl、Python、Ruby]
" Ctrl + ]                   --转到函数定义
" Ctrl + T                   --返回调用函数
" Ctrl + E                   --添加注释 [插入模式] [添加的是C语言的多行注释，所以适用于C/C++/Java等]
" F3                         --加载作者、时间信息 [非插入模式]

" <C-P>                      --单词补全
" <C-X><C-L>                 --整行补全
" Tab键                      --插入模式下的全功能语法结构补全 [snipMate插件]
" Shift + Insert             --向Vim中粘贴从别处复制的内容

" nt                         --打开NERDTree [非插入模式]
" tl                         --打开TagList [非插入模式]
" \ww                        --进入VimWiki模式

" za                         --打开或关闭当前折叠
" zM                         --关闭所有折叠
" zR                         --打开所有折叠

" :set syntax=cpp            --手动选择语法高亮 [或 :set filetype=cpp]

" :%!xxd                     --转储二进制文件，以十六进制形式显示
" :%!xxd -r                  --还原二进制文件


" ---------- 主要插件详细用法说明 ---------------------

" :Tlist                     --呼出变量和函数列表 [TagList插件]
" :FencView                  --查看文件编码和更改文件编码 [FencView插件]
" :LoadTemplate              --呼出语法模板 [Load_Template插件]
" :AuthorInfoDetect          --添加作者、时间等信息 [NERD_commenter && authorinfo插件]

" ---------- a.vim [自动切换C/C++同名头文件] ----------
"
" :A                         --切换同名头文件并独占整个屏幕
" :AS                        --切换同名头文件并垂直分屏，头文件在上
" :AV                        --切换同名头文件并水平分割，头文件在左

" ---------- NERDTree [智能文件浏览器] ----------------
"
" :NERDTree                  --启动NERDTree插件
" o [小写]                   --切换当前文件或目录的打开、关闭状态
" u                          --打开上层目录
" p [小写]                   --返回上层目录
" P [大写]                   --返回根目录
" K                          --转到当前目录第一个节点
" J                          --转到当前目录最后的节点
" m                          --显示文件系统菜单 [增、删、移]
" ?                          --弹出帮助菜单
" q                          --退出该插件

"################## start Vundle ###############
set nocompatible    " be iMproved
"filetype off        " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()


"<hdl_plugin
"let g:HDL_Author = "rjjacky"   "默认值是我的名字
"let g:HDL_Company = "THU"   "默认值为空""
"hdl_plugin>

" let Vundle manage Vundle
"  " required! 
Bundle 'gmarik/vundle'
"

" My Bundles here:

" vim-scripts repos

" Syntax
Bundle 'asciidoc.vim'
Bundle 'confluencewiki.vim'
Bundle 'html5.vim'
Bundle 'JavaScript-syntax'
"Bundle 'mako.vim'
Bundle 'moin.vim'
Bundle 'python.vim--Vasiliev'
Bundle 'xml.vim'
Bundle 'mips.vim'

"Auto Inplement
Bundle 'tczengming/headerGatesAdd.vim'

"doc
"Bundle 'doxygen-support.vim'

"markup file conversion
Bundle 'vim-pandoc/vim-pandoc'
let g:pandoc_no_folding = 1

" vim outline of markdown
Bundle 'vim-scripts/VOoM'

"pinyin search
Bundle "ppwwyyxx/vim-PinyinSearch"

"search
Bundle "rking/ag.vim"

" sublime-like multi-cursor edit
Bundle "terryma/vim-multiple-cursors"

" ejs
Bundle "briancollins/vim-jst"

"python predict
Bundle "rkulla/pydiction"

" Color
Bundle 'desert256.vim'
Bundle 'Impact'
Bundle 'matrix.vim'
Bundle 'vibrantink'
Bundle 'vividchalk.vim'

" Ftplugin
Bundle 'python_fold'

" html scaffold
Bundle "Emmet.vim"


Bundle "Lokaltog/vim-easymotion"

" Indent
"Bundle 'indent/html.vim'
"Bundle 'IndentAnything'
Bundle 'Javascript-Indentation'
Bundle 'mako.vim--Torborg'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
"Bundle 'gg/python.vim'
"
"git relate
"Bundle "airblade/vim-gitgutter"
"Bundle "gregsexton/gitv"

"quick surround
Bundle "tpope/vim-commentary"
Bundle "tpope/vim-surround"

"quick (de)comment 
Bundle "Raimondi/delimitMate"

" Plugin
Bundle 'The-NERD-tree'
Bundle 'AutoClose--Alves'
Bundle 'auto_mkdir'
Bundle 'cecutil'
Bundle 'fcitx.vim'
Bundle 'FencView.vim'
"Bundle 'FuzzyFinder'
Bundle 'L9'
Bundle 'Mark'
Bundle 'mru.vim'
Bundle 'The-NERD-Commenter'
"Bundle 'project.vim'
Bundle 'restart.vim'
Bundle 'taglist.vim'
"Bundle 'templates.vim'
"Bundle 'vimim.vim'
Bundle 'ZenCoding.vim'
Bundle 'css_color.vim'
Bundle 'gsession.vim'
Bundle 'boost.vim'
"Bundle 'JackyRen/header.vim.git' 
Bundle 'asmx86_64'
Bundle 'echofunc.vim'
Bundle 'vimtips.zip'
Bundle 'a.vim'
Bundle 'Shougo/neocomplcache.vim'


"==auto complete==
Bundle "Valloric/YouCompleteMe.git"
"==for javascript=="
"Bundle 'hallettj/jslint.vim'
"Bundle 'godlygeek/tabular.git'
"Bundle 'walm/jshint.vim.git'
Bundle 'scrooloose/syntastic.git'
"Bundle 'pangloss/vim-javascript.git'
"Bundle 'myhere/vim-nodejs-complete.git'
Bundle 'jsbeautify'
"Bundle 'omnicppcomplete'
"Bundle 'vim-scripts/header.vim.git' 
"Bundle 'SuperTab'
"Bundle 'FredKSchott/CoVim'
"
Bundle 'michalliu/sourcebeautify.vim'

"json
Bundle 'elzr/vim-json'
"Jade
Bundle 'digitaltoad/vim-jade'
"
"coffeejs
Bundle 'kchmck/vim-coffee-script'
"
"yaml
Bundle "stephpy/vim-yaml"

"
"<VHDL
"Bundle 'hdl_plugin'
Bundle 'vim-scripts/VHDL-indent-93-syntax'
"VHDL>

"AuthorInfo
Bundle 'vim-scripts/AuthorInfo'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/DrawIt'
"################## end Vundle ###############



set history=100				"设置历史记录



colorscheme elflord          " 着色模式
set guifont=Monaco:h10       " 字体 && 字号
set expandtab                " 将tab展开
set tabstop=4                " 设置tab键的宽度
set softtabstop=4            " 设置tab键的宽度
set shiftwidth=4             " 换行时行间交错使用4个空格
set autoindent               " 自动对齐
"set backspace=2              " 设置退格键可用
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set cindent shiftwidth=4     " 自动缩进4空格
set smartindent              " 智能自动缩进
set ai!                      " 设置自动缩进
set nu!                      " 显示行号
"set showmatch               " 显示括号配对情况
set mouse=a                  " 启用鼠标
set ruler                    " 右下角显示光标位置的状态行
set incsearch                " 查找book时，当输入/b时会自动找到
set hlsearch                 " 开启高亮显示结果
set incsearch                " 开启实时搜索功能
set nowrapscan               " 搜索到文件两端时不重新搜索
set nocompatible             " 关闭兼容模式
set vb t_vb=                 " 关闭提示音
"set cursorline              " 突出显示当前行
set hidden                   " 允许在有未保存的修改时切换缓冲区
"set list                     " 显示Tab符，使用一高亮竖线代替
"set listchars=tab:\|\ ,

set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title
set visualbell           " don't beep
set noerrorbells         " don't beep"
set showcmd        " display incomplete commands

syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全

set writebackup              " 设置无备份文件

set nobackup
"if has("vms")
"    set nobackup        " do not keep a backup file, use versions instead
"else
"    set backup        " keep a backup file
"endif

set autochdir                " 设定文件浏览器目录为当前目录
"set nowrap                  " 设置不自动换行
set foldmethod=syntax        " 选择代码折叠类型
set foldlevel=100            " 禁止自动折叠
set sidescroll=10			"查看左右10个字符的上下文

set laststatus=2             " 开启状态栏信息
set cmdheight=2              " 命令行的高度，默认为1，这里设为2

set whichwrap=b,s,<,>,[,]	"光标移动
"set ignorecase				"忽略大小写

set autowrite				"自动保存


" 设置编码
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1,gb18030,big5

" setting tags 

set nocp 
filetype plugin on 
" configure tags - add additional tags here or comment out not-used ones 
" load user definition tags 
set tags+=./../tags 
set tags+=~/.vim/tags/stl 
set tags+=~/.vim/tags/c
" linux header file tag
set tags+=~/.vim/tags/linuxkernel
set tags+=~/.vim/tags/sdl 
set tags+=~/.vim/tags/qt4 
" build tags of your own project with CTRL+F12 
map <c-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR> 
noremap <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr> 
inoremap <F12> <Esc>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr> 
" map jsbeautify to F4 "
nnoremap <F4> :call g:Jsbeautify()<CR>  

"print 
if has('unix')
    set printencoding=utf-8
    set printmbcharset=iso10646
    set printfont=Microsoft_Yahei_Mono
    set printmbfont=r:Microsoft_Yahei_Mono
elseif has('win32')
    "very dirty ,but works
endif



"" OmniCppComplete 
"let OmniCpp_NamespaceSearch = 1 
"let OmniCpp_GlobalScopeSearch = 1 
"let OmniCpp_ShowAccess = 1 
"let OmniCpp_MayCompleteDot = 1 
"let OmniCpp_MayCompleteArrow = 1 
"let OmniCpp_MayCompleteScope = 1 
"let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"] 
"" automatically open and close the popup menu / preview window 
"au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif 
"set completeopt=menuone,menu,longest,preview
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>" 
"let g:AutoComplPop_MappingDriven = 0
"let g:acp_enableAtStartup = 1
"let g:acp_ignorecaseOption = 1
"let g:acp_completeOption = '.,w,b,k'
"" """""""""""""""""""""""""""""configuration for neocomplcache""""""""""""""""""""""""""""
"" Disable AutoComplPop.
"let g:acp_enableAtStartup = 0
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1 
"" Use smartcase.
"let g:neocomplcache_enable_smart_case = 1
"" Use camel case completion.
"let g:neocomplcache_enable_camel_case_completion = 1
"" Use underbar completion.
"let g:neocomplcache_enable_underbar_completion = 1
"" Set minimum syntax keyword length.
"let g:neocomplcache_min_syntax_length = 1
"" set the max list in the popup menu. increase the speed
"let g:neocomplcache_max_list=20
"" Define keyword.
"if !exists('g:neocomplcache_keyword_patterns')
"	let g:neocomplcache_keyword_patterns = {}
"endif
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*'
"let g:neocomplcache_auto_completion_start_length=1
"" ignore letter case
"let g:neocomplcache_enable_ignore_case=1


" For Haskell
:let hs_highlight_delimiters=1            " 高亮定界符
:let hs_highlight_boolean=1               " 把True和False识别为关键字
:let hs_highlight_types=1                 " 把基本类型的名字识别为关键字
:let hs_highlight_more_types=1            " 把更多常用类型识别为关键字
:let hs_highlight_debug=1                 " 高亮调试函数的名字
:let hs_allow_hash_operator=1             " 阻止把#高亮为错误


" ======= 引号 && 括号自动匹配 ======= "

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>

:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>

:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>

":inoremap < <><ESC>i

":inoremap > <c-r>=ClosePair('>')<CR>

"=========快速进入命令模式============"
nnoremap ; :
vmap ; :


" enter auto indent" 
":inoremap <CR> <CR><ESC>O


function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


function HighlightMorethan80()
    autocmd FileType text setlocal textwidth=78
    highlight OverLength ctermbg=blue ctermfg=white guibg=#592929
    match OverLength /\%81v.\+/
endf




" MiniBufExplorer     多个文件切换 可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
let g:miniBufExplModSelTarget=1

" :Tlist              调用TagList
let Tlist_Show_One_File=1                    " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow=1                  " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window=1                 " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close=1             " 自动折叠


" :FencView           查看文件编码和更改文件编码
let g:fencview_autodetect=1

" :LoadTemplate       根据文件后缀自动加载模板
let g:template_path='/home/rj/.vim/template/'

" :AuthorInfoDetect   自动添加作者、时间等信息，本质是NERD_commenter && authorinfo的结合
let g:vimrc_author='Jacky.Ren'
let g:vimrc_email='rjjacky<at>gmail<dot>com'
let g:vimrc_homepage='' 
" nmap <F4> :AuthorInfoDetect<cr>
" Ctrl + E            一步加载语法模板和作者、时间信息 [非插入模式]
"map <c-a> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
"vmap <c-a> <ESC>:LoadTemplate<CR><ESC>:AuthorInfoDetect<CR><ESC>Gi
map  <F3> <ESC>:AuthorInfoDetect<CR><ESC>
vmap <F3> <ESC>:AuthorInfoDetect<CR><ESC>



" Ctrl + H       
imap <c-h> <Left>

" Ctrl + J      
imap <c-j> <Down>

" Ctrl + K     
imap <c-k> <Up>

imap <c-w> <Right><Esc>wi
imap <c-b> <Right><Esc>bi

" Ctrl + L    
imap <c-l> <Right>

imap <c-e> <End>

" Ctrl + Z            
imap <c-z> <ESC>

" Ctrl + c            在当前行添加C/C++/Java语言的多行注释 [插入模式]
"imap <c-c> /*  */<ESC>hhi

" nt                  打开NERDTree [非插入模式]
map nt :NERDTree<CR>

" tl                  打开Taglist [非插入模式]
map tl :Tlist<CR><c-l>



" ======= 编译 && 运行 ======= "

" make
map  <F8> :make<CR>
imap <F8> <ESC>:make<CR>
vmap <F8> <ESC>:make<CR>
" 编译C源文件
func! CompileGcc()
    exec "w"
    let compilecmd="!gcc -Wall -pedantic -std=c99 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 编译C++源文件
func! CompileCpp()
    exec "w"
    let compilecmd="!g++ -Wall -pedantic -std=c++98 "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 编译Java源文件
func! CompileJava()
    exec "w"
    exec "!javac %"
endfunc

" 编译Coffee源文件
func! CompileCoffee()
    exec "w"
    exec "!coffee -cb %"
endfunc

func! CompileMarkdown()
    exec "w"
    exec "!pandoc % > %.html"
endfunc

func! CompileThcoMips()
    exec "w"
    exec "!ThinpadAssembler % %.bin"
    exec "!cp %.bin bin"
endfunc


" 编译Haskell源文件
func! CompileHaskell()
    exec "w"
    let compilecmd="!ghc --make "
    let compileflag="-o %<"
    exec compilecmd." % ".compileflag
endfunc

" 根据文件类型自动选择相应的编译函数
func! CompileCode()
    exec "w"
    if &filetype == "c"
        exec "call CompileGcc()"
    elseif &filetype == "cpp"
        exec "call CompileCpp()"
    elseif &filetype == "java"
        exec "call CompileJava()"
    elseif &filetype == "haskell"
        exec "call CompileHaskell()"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    endif
endfunc

" 运行可执行文件
func! RunResult()
    exec "w"
    if &filetype == "c"
        exec "! ./%<"
    elseif &filetype == "cpp"
        exec "! ./%<"
    elseif &filetype == "java"
        exec "!java %<"
    elseif &filetype == "haskell"
        exec "! ./%<"
    elseif &filetype == "lua"
        exec "!lua %<.lua"
    elseif &filetype == "perl"
        exec "!perl %<.pl"
    elseif &filetype == "python"
        exec "!python %<.py"
    elseif &filetype == "ruby"
        exec "!ruby %<.rb"
    endif
endfunc

"command CC call CompileCode()<CR>
"command RUN call RunResult()<CR>
" Ctrl + C 一键保存、编译
"map  <c-c> :call CompileCode()<CR>
"imap <c-c> <ESC>:call CompileCode()<CR>
"vmap <c-c> <ESC>:call CompileCode()<CR>
"
"" Ctrl + W 一键保存、运行
"map  <c-i> :call RunResult()<CR>
"imap <c-i> <ESC>:call RunResult()<CR>
"vmap <c-i> <ESC>:call RunResult()<CR>

"
"
"echofunc 配置
let g:EchoFuncKeyNext='<Esc>='
let g:EchoFuncKeyPrev='<Esc>-'


"保存的时候自动加入author信息

" ======= VimWiki ======= "

" 设置编码
let g:vimwiki_w32_dir_enc = 'utf-8'

" 使用鼠标映射
let g:vimwiki_use_mouse = 1

" 不要将驼峰式词组作为 Wiki 词条
let g:vimwiki_camel_case = 0

" 声明可以在wiki里面使用的HTML标签
let g:vimwiki_valid_html_tags='b,i,s,u,sub,sup,kbd,br,hr,div,del,code,red,center,left,right,h4,h5,h6,pre'

"let g:vimwiki_list = [{
"			\ 'path': '/media/My_Document/Apps/Gvim/mysite/wiki',
"			\ 'path_html': '/media/My_Document/Apps/Gvim/mysite/html/',
"			\ 'html_header': '/media/My_Document/Apps/Gvim/mysite/template/header.html',
"			\ 'html_footer': '/media/My_Document/Apps/Gvim/mysite/template/footer.html',
"			\ 'auto_export': 1,
"			\ 'nested_syntaxes': {'C': 'c', 'C++': 'cpp', 'Haskell': 'haskell', 'Ruby': 'ruby', 'SQL': 'sql', 'HTML': 'html', 'CSS': 'css', 'JavaScript': 'javascript', 'Vim': 'vim', 'Make': 'make'},}]


" transfer/read and write one block of text between vim sessions
" Usage:
" `from' session:
"     ma
"     move to end-of-block
"     xw
"
" `to' session:
"     move to where I want block inserted
"     xr
"
"

if has("unix")
    nmap xr   :r $HOME/.vimxfer<CR>
    nmap xw   :'a,.w! $HOME/.vimxfer<CR>
    nmap xc   :'a,.w! $HOME/.vimxfer<CR> :!xclip -sel clip < $HOME/.vimxfer<CR><CR>

    vmap xr   c<esc>:r $HOME/.vimxfer<CR>
    vmap xw   :w! $HOME/.vimxfer<CR>
    vmap xc   :'a,.w! $HOME/.vimxfer<CR> :!xclip -sel clip < $HOME/.vimxfer<CR><CR>

else
    nmap xr   :r c:/.vimxfer<CR>
    nmap xw   :'a,.w! c:/.vimxfer<CR>
    vmap xr   c<esc>:r c:/.vimxfer<cr>
    vmap xw   :w! c:/.vimxfer<CR>
endif
"end


map ej :previous<cr>
map ek :next<cr>

"hex and ascii converter
nmap h2r :%!xxd -r<CR>
nmap r2h :%!xxd<CR>
vmap h2r <esc>:%!xxd -r<CR>
vmap r2h <esc>:%!xxd<CR>

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

""""""""""""""""""quickflix"""""""""""""""""""""'
"autocmd FileType c,cpp  map <buffer> <leader><space> :w<cr>:make<cr>
"nmap <leader>cn :cn<cr>
"nmap <leader>cp :cp<cr>
"nmap <leader>cw :cw 10<cr> 


""""""""""""""""""""""""convert hex to dec"""""""""""""""""""""""'
function! Hex2Dec()
    let lstr = getline(".")
    let hexstr = matchstr(lstr, '0x[a-f0-9]+')
    while hexstr != ""
        let hexstr = hexstr + 0
        exe 's#0x[a-f0-9]+#'.hexstr."#"
        let lstr = substitute(lstr, '0x[a-f0-9]+', hexstr, "")
        let hexstr = matchstr(lstr, '0x[a-f0-9]+')
    endwhile
endfunction
""""""""""""""""""""""""end convert hex to dec"""""""""""""""""""""""'


"<replace in all buffer
function AllBuffers(cmnd)
    let cmnd = a:cmnd
    let i = 1
    while (i <= bufnr("$"))
        if bufexists(i)
            execute "buffer" i
            execute cmnd
        endif
        let i = i+1
    endwhile
endfun
"replace in all buffer >



" rotate_sig.vim
" Maintainer:  Roel Vanhout <roel@2e-systems.com>
" Version:     0.1
" Last Change: Tuesday, June 12, 2001
" Mapping I use:
" nmap ,r :call RotateSig()<CR>
" Usage:
" -Make sure you delimit your sig with '-- ', or adjust the script
" -Adjust the last execute to a command that prints a sig to stdout
" Known problems:
"   - You'll get an error message when you're below the last
"     '^-- $' in your mail (nothing bad though - just an not-
"     found marker)

function! RotateSig()
    normal mQG
    execute '?^-- $'
    execute ':nohl'
    normal o<ESC>
    normal dG
    normal <CR>
    execute 'r !~/bin/autosig ~/.quotes \%'
    normal `Q
endfunction


"<YouCompleteMe
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'

let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_complete_in_comments = 1
let g:ycm_complete_in_strings = 1
let g:ycm_min_num_of_chars_for_completion = 1
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_collect_identifiers_from_comments_and_strings = 1

let g:EclimCompletionMethod = 'omnifunc'

" preview
let g:ycm_add_preview_to_completeopt = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1


let g:ycm_semantic_triggers =  {
            \   'c' : ['->', '.'],
            \   'objc' : ['->', '.'],
            \   'ocaml' : ['.', '#'],
            \   'cpp,objcpp' : ['->', '.', '::'],
            \   'perl' : ['->'],
            \   'php' : ['->', '::'],
            \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
            \   'ruby' : ['.', '::'],
            \   'lua' : ['.', ':'],
            \   'erlang' : [':'],
            \ }
nnoremap <Leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" }


nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR>
"YouCompleteMe>


"vimtips 79

"The following function will make a :cwindow window with a line per function
"in the current C source file. NOTE: It writes the file as a side effect.
"
"Invoke with ':call ShowFunc()'
"You may want to do :nmap <somekey> :call ShowFunc()<CR>

"vimtips 98
"disable hlsearch
nmap <silent> <C-N> :silent noh<CR>

function! ShowFunc()

    let gf_s = &grepformat
    let gp_s = &grepprg

    let &grepformat = '%*\k%*\sfunction%*\s%l%*\s%f %*\s%m'
    let &grepprg = 'ctags -x --c-types=f --sort=no -o -'

    write
    silent! grep %
    cwindow

    let &grepformat = gf_s
    let &grepprg = gp_s

endfunc



" Ensure all autocommands, functions and commands are included only once
if !exists("header_protecter")
    let header_protecter = 1

    if has('persistent_undo')
        set undofile
        set undodir=~/.vimtmp/undo
    endif

    " TxtBrowser          高亮TXT文本文件
    au BufRead,BufNewFile *.txt setlocal ft=txt
    autocmd BufNewFile,BufReadPost *.jade set tabstop=2
    autocmd BufNewFile,BufReadPost *.jade set softtabstop=2
    "autocmd BufNewFile,BufReadPost *.json set filetype=json
    "autocmd BufNewFile,BufReadPost *.coffee set filetype=coffee
    autocmd BufNewFile,BufReadPost *.coffee set tabstop=2
    autocmd BufNewFile,BufReadPost *.coffee set softtabstop=2
    autocmd BufNewFile,BufReadPost *.coffee set shiftwidth=2


    autocmd BufNewFile,BufReadPost *.cpp set tabstop=3
    autocmd BufNewFile,BufReadPost *.cpp set softtabstop=3
    autocmd BufNewFile,BufReadPost *.cpp set shiftwidth=3

    autocmd BufNewFile,BufReadPost *.h set tabstop=3
    autocmd BufNewFile,BufReadPost *.h set softtabstop=3
    autocmd BufNewFile,BufReadPost *.h set shiftwidth=3

    autocmd BufNewFile,BufReadPost *.yaml set tabstop=4
    autocmd BufNewFile,BufReadPost *.yaml set softtabstop=4
    autocmd BufNewFile,BufReadPost *.yaml set shiftwidth=4


    "autocmd BufNewFile,BufReadPost *.js set tabstop=2
    "autocmd BufNewFile,BufReadPost .js set softtabstop=2
    
    autocmd BufNewFile,BufReadPost *.thcos set filetype=mips

    autocmd BufNewFile,BufReadPost *.rule set filetype=json
    autocmd BufNewFile,BufReadPost *.rule set tabstop=2
    autocmd BufNewFile,BufReadPost *.rule set softtabstop=2
    autocmd BufNewFile,BufReadPost *.rule set shiftwidth=2
    " auto compile 
    au BufWritePost *.coffee call CompileCoffee()
    au BufWritePost *.md call CompileMarkdown()
    au BufWritePost *.thcos call CompileThcoMips()


    " Enable file type detection.
    " Use the default filetype settings, so that mail gets 'tw' set to 72,
    " 'cindent' is on in C files, etc.
    " Also load indent files, to automatically do language-dependent indenting.
    filetype plugin indent on

    " For all text files set 'textwidth' to 78 characters.
    " 每行超过80个的字符用下划线标示
    "au BufRead,BufNewFile *.asm,*.c,*.cpp,*.java,*.cs,*.sh,*.lua,*.pl,*.pm,*.py,*.rb,*.erb,*.hs,*.vim call HighlightMorethan80()
    au BufRead,BufNewFile *.asm,*.java,*.cs,*.lua,*.pl,*.pm,*.rb,*.erb,*.hs,*.vim call HighlightMorethan80()
    
    " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
    " (happens when dropping a file on gvim).
    autocmd BufReadPost *
                \ if line("'\"") > 0 && line("'\"") <= line("$") |
                \   exe "normal g`\"" |
                \ endif

    " set :make and some commands
    auto FileType cpp let &makeprg="g++ % -o %:r -Wall -Wextra -O2 -std=c++11"
    auto FileType c let &makeprg="gcc % -o %:r -Wall -Wextra -O2 -std=c++11"
    auto FileType tex let &makeprg="make"

    fun Make_arg(arg, ...)
        let makeprg0 = &makeprg
        let &makeprg = a:arg
        for s in a:000
            let &makeprg .= " " . s
        endfor
        make
        let &makeprg = makeprg0
    endfun

    command -nargs=* Makegdb call Make_arg("g++ % -o %:r -ggdb -Wall -Wextra -std=c++11", <f-args>)
    command -nargs=* Makepg call Make_arg("g++ % -o %:r -pg -Wall -Wextra -std=c++11", <f-args>)
    command -nargs=* TryCompile call Make_arg("g++ % -o /tmp/vim_try_compile -Wall -Wextra -c -std=c++11", <f-args>)
    command -nargs=* Makedebug call Make_arg("g++ % -o %:r -g -Wall -Wextra -DDEBUG -D__DEBUG_BUILD -std=c++11", <f-args>)


    " Automatically updates the time and date in the head of the file
    autocmd BufWritePre,FileWritePre *   call LastMod()
    fun LastMod()
        let ll = line(".")
        let l = line("$")
        let c = col(".")
        if l > 50
            let l = 50
        endif
        execute '1,' . l . 'substitute/' . '^\(.*\$Date:\).*$' . '/\1 ' . strftime('%a %b %d %H:%M:%S %Y %z') . '/e'
        execute '1,' . l . 'substitute/' . '^\(.*\$File:\).*$' . '/\1 ' . expand('<afile>:t') . '/e'

        let l = line("$")
        if l > 50
            let l = 50
        endif
        execute '1,' . l . 's/\(【日期】\).*$' . '/\1 ' . strftime('%a %b %d %H:%M:%S %Y %z') . '/e'
        call cursor(ll, c)
    endfun
endif


let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'
nmap <Leader>ps :call PinyinSearch()<CR>
nnoremap ? :call PinyinSearch()<CR>
nmap <Leader>pn :call PinyinNext()<CR>
let g:PinyinSearch_Dict = $HOME . "/.vim/bundle/vim-PinyinSearch/PinyinSearch.dict"


" {{{make
func Make()                        " silent make with quickfix window popup
    if &ft == 'cpp'
        if filereadable(getcwd() . "/Makefile")
            let &makeprg="make"
        elseif  filereadable(getcwd() . "/../Makefile")
            let &makeprg="make -C .."
        endif
    endif
    make
    " silent make ?
    redraw!
    for i in getqflist()
        if i['valid']
            cwin | winc p | return
        endif
    endfor
endfunc

func FindMakefile()
    exec "cd " . expand ("%:p:h")
    while ! filereadable(getcwd() . "/Makefile") && getcwd () != "/"
        cd ..
    endw
    :!make
endfunc
au Filetype gnuplot let &makeprg="gnuplot % ; feh ./*"
au Filetype dot let &makeprg="dot -Tpng -O -v % ; feh %.png"
au Filetype php let &makeprg="php %"
au Filetype r let &makeprg="R <% --vanilla"
func InstantRun()
    if &ft == 'python'
        if matchstr(getline(1), 'python2') == ""
            :!python %
        else | :!python2 %
        endif
    elseif &ft == 'ruby' | :!ruby %
    elseif &ft == 'sh' | :!bash %
    elseif &ft == 'cpp' | :!gdb -tui %<
    elseif &ft == 'java' | :! javac % && echo "Compilation succeed" && java %<
    elseif &ft == 'javascript' | :! node %
    elseif &ft == 'tex' | :! xelatex %
    elseif &ft == 'lisp' | :! sbcl --script %
    elseif &ft == 'coffee' | :! coffee %
    elseif &ft == 'asm' | :! as % -o %<.o --32 && ld %<.o -o %< -m elf_i386
    else | call Make() | endif
endfunc
nnoremap <Leader>rr :call InstantRun() <CR>
nnoremap <Leader>mk :call Make()<CR>
nnoremap <Leader>mr :!make run <CR>
nnoremap <Leader>make :call FindMakefile()<CR>
" }}}
"
"
"
"


"VimTip	 99: How to tell what syntax highlighting group *that* is!
"http://vim.sourceforge.net/tip_view.php?tip_id=
"
"Here's a (what should be a one-line) map to help you tell just what
"syntax highlighting groups the item under the cursor actually is:

"map  <F10>  :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

"Once known you can override the current highlighting with whatever you want.
"If you're debugging a syntax highlighting file (a rare occupation), sometimes
"you'll wish to know the entire chain of syntax highlighting.  For that,
"check out

"VimTip 110
"auto make html with text

func Table()
    let end=line("'>")
    let start=line("'<")
    let i=start

    wh i <= end
        exe ":" . i
        let e=Empty()
        if e == 1
            exe "normal I</tr><tr>"
        else
            exe "normal I<td>A</td>>>"
        endif
        let i=i+1
    endwh

    exe "normal o</tr></table><<"
    exe ":" . start
    exe "normal O<table><tr><<"
endfunc

autocmd BufNewFile,BufReadPost *.html vmap <F5> <ESC>:call Table()<CR>

func Empty()
    let line_nr= line (".")
    let a=getline ( line_nr )
    let m=match(a, "\\S")
    if m == -1 
        return 1
    else
        return 0
    endif
endfunc
"end of VimTip 110
"
vmap <F6> :hardcopy > /tmp/%.ps <CR>
nmap <F6> :hardcopy > /tmp/%.ps <CR>
imap <F6> <ESC>:hardcopy > /tmp/%.ps <CR>


"vimtips 117

map _u :call ID_search()<Bar>execute "/\\<" . g:word . "\\>"<CR>
map _n :n<Bar>execute "/\\<" . g:word . "\\>"<CR>

function ID_search()
    let g:word = expand("<cword>")
    let x = system("lid --key=none ". g:word)
    let x = substitute(x, "\n", " ", "g")
    execute "next ". x
endfun
"end of tips 117

"VimTip	 124: Number a group of lines
"http://vim.sourceforge.net/tip_view.php?tip_id=
"
"Below is a way to number a set of lines.  Here is an exaple before and after sna
"pshot:
"
"apple
"bob
"pear
"tree
"
"1 apple
"2 bob
"3 pear
"4 tree

" Description:
" This provides a command and a function.  They both can be called with or
" without a range.  In addition, they can be called with or without
" arguments.  Without a range they operate on the current line.
"
" There are two supported arguments.  They are described below:
"     arg1 -> the number to start at.  The default is one.  This will
"             number your selected lines sequentially.  The start can be a
"             number, ., $, or, 'x (like getline).
"     arg2 -> Text to append after numbers.  The default is a space.
"
" Examples:
"     To provide your functionality:
"         :%Nlist 20
"         :%call Nlist(20)
"     To make a list start at 1:
"         :'<,'>Nlist
"         :'<,'>call Nlist()
"     To number the whole buffer (with it's actual line number):
"         :%Nlist
"         :%call Nlist()
"     To number a subset of lines with their line number (and put a '] ' in
"     front of every number):
"         :'<,'>Nlist . ]\
"         :'<,'>call Nlist(".", "] ")

command! -nargs=* -range Nlist <line1>,<line2>call Nlist(<f-args>)
function! Nlist(...) range
    if 2 == a:0
        let start = a:1
        let append = a:2
    elseif 1 == a:0
        let start = a:1 
        let append = " "
    else
        let start = 1
        let append = " "
    endif

    " try to work like getline (i.e. allow the user to pass in . $ or 'x)
    if 0 == (start + 0)
        let start = line(start)
    endif

    exe a:firstline . "," . a:lastline . 's/^/\=line(".")-a:firstline+start.append/'
endfunction

"for vim-plugin : sourceBeautify
au BufRead,BufNewFile *.json setf json 


"VimTip	 127: Preview HTML files quickly
"http://vim.sourceforge.net/tip_view.php?tip_id=
"
"I've found while writing HTML files that it can become cumbersome when I have to
" switch to a web browser, load my page, and move back to VIM regularly to previe
"w what I've written.  I've come up with the following tricks.
"
"The first one requires that you have lynx (the text-based browser) installed on 
"your computer (available from http://lynx.isc.org/release/).  If your HTML page 
"is primarily text, with few (if any) images, you can set up the following functi
"on and mapping:

   function PreviewHTML_TextOnly()
      let l:fname = expand("%:p" )
      new
      set buftype=nofile nonumber
      exe "%!lynx " . l:fname . " -dump -nolist -underscore -width " . winwidth(
 0 )
   endfunction

   map <Leader>pt  :call PreviewHTML_TextOnly()<CR>

"This will open a new window and display your formatted HTML document in that win
"dow.  Note that bold-face, italics, links, etc. will be lost -- all you will see
" is the text -- but the "-underscore" parameter to Lynx causes any text that wou
"ld have been bold, italicized, or underlined to be displayed like _this_.
"
"The other trick requires that vim be running on your current machine, and that y
"ou be running a GUI of some sort (X-Windows, Windows, etc.).  You can cause vim 
"to invoke your favorite browser and have it display the file, like this:
   function PreviewHTML_External()
      exe "silent !mozilla -remote \"openurl(file://" . expand( "%:p" ) . ")\""
   endfunction

   map <Leader>pp :call PreviewHTML_External()<CR>
"If you don't use mozilla, you will need to modify the function to use your prefe
"rred browser.
"
"Happy vimming!
"
"
 
"setup of indent guides
"hi IndentGuidesOdd  ctermbg=black
"hi IndentGuidesEven ctermbg=darkgrey
"hi IndentGuidesOdd  ctermbg=white
"hi IndentGuidesEven ctermbg=lightgrey
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
"
"indent line
let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#A4E57E'
map <leader>il :IndentLinesToggle<CR>

"audo comment
autocmd FileType python,shell set commentstring=#\ %s                 " 设置Python注释字符
autocmd FileType mako set cms=##\ %s"

nmap YY maxw

"swithing between files
"nmap <C-Tab> <C-w>w
"nmap <C-S-Tab><C-w>W
