set nocompatible "关闭VI兼容模式
filetype on
syntax on
if filereadable($VIM."\\SelfPC") 
  let s:IsSelf=1
else
  let s:IsSelf=0
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""插件"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("Win32")
  set rtp+=$VIM/PlugIn/VIM-PLUG/ "指定VIM-PLUG的路径
  let s:PlugPath='$VIM/PlugIn' "指定其他插件安装路径
else
  set rtp+=~/Vim/PlugIn/VIM-PLUG/
  let s:PlugPath='~/Vim/PlugIn'
  let macvim_skip_colorscheme=1
endif

colorscheme DefHI
call plug#begin(s:PlugPath)
  Plug 'JUNEGUNN/VIM-PLUG'
  Plug 'PRESERVIM/NERDTREE' | Plug 'JISTR/VIM-NERDTREE-TABS'
  Plug 'YGGDROOT/LEADERF' ,{'DO': 'INSTALL.BAT'}
  Plug 'NEOCLIDE/COC.NVIM',{'BRANCH': 'RELEASE'}
  Plug 'SKYWIND3000/ASYNCRUN.Vim' 
  Plug 'SKYWIND3000/VIM-TERMINAL-HELP'
  Plug 'LIUCHENGXU/ELELINE.Vim'
  Plug 'YIANWILLIS/VIMCDOC'
  Plug 'MG979/VIM-VISUAL-MULTI'
  Plug 'JUNEGUNN/VIM-PEEKABOO' 
  Plug 'VOLDIKSS/VIM-FLOATERM'
  Plug 'VOLDIKSS/LEADERF-EVERYTHING'
  Plug 'JUNEGUNN/VIM-EASY-ALIGN'
  Plug 'EASYMOTION/VIM-EASYMOTION'
  Plug 'DEREKWYATT/VIM-FSWITCH'
  Plug 'INKARKAT/VIM-INGO-LIBRARY'
  Plug 'INKARKAT/VIM-MARK'
  Plug 'ZSABERlV0/ZFVIMIM'        | Plug 'ZSABERLV0/ZFVIMJOB' | Plug 'ZSABERLV0/ZFVIMIM_PINYIN_HUGE'
  Plug 'ZSABERLV0/ZFVIMHEXEDITOR' | Plug 'ZSABERLV0/ZFVIMTXTHIGHLIGHT'
  Plug 'IANVA/VIM-YOUDAO-TRANSLATER'
  Plug 'TPOPE/VIM-SURROUND'
  Plug 'VIM-SCRIPTS/LARGEFILE'
  Plug 'LUOCHEN1990/RAINBOW'
  Plug 'BFRG/VIM-CPP-MODERN'
  Plug 'TBASTOS/VIM-LUA'
call plug#end()
filetype plugin indent on
let s:RootMark=[".GIT","@TYPES.META","ROOT","README.MD","LICENCE","LICENSE",L(".GITIGNORE")]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""OTHER-PLUG""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""LEADERF-EVERYTHING"""
let g:Lf_EverythingOpenfileFilter = ['O','H','M','MK','PY','JS','MM','CS','SH','MD','DIZ','LOG','Win','CNX','XML','VIM','INI','III','TCC','CPP','HPP','AHK','INI','INI','LUA','PHP','CSS','JAVA','JSON','PLIST','GRADLE','TXT']
"""VIM-SURROUND'"""
let g:surround_no_mappings  = 1
"""ZFVIMTXTHIGHLIGHT"""
let g:zf_txt_auto_highlight = 1
let g:zf_txt_auto_syntax    = ['',L('TXT'),L('TEXT'),Y('TXT'),Y('TEXT')]
"""VIM-PLUG"""
let g:plug_window = L("RightBelow New") "VIM-PLUG POS
"""VIM-EASY-ALIGN"""
let g:easy_align_delimiters = {
    \ ']' : {'pattern':']', 'left_margin': 0},
    \ ')' : {'pattern':')', 'left_margin': 0},
    \ ':' : {'pattern':':', 'left_margin': 0}
    \ }
"""PYTHON-SYNTAX"""
"let g:python_highlight_all          = 1 "判断的这个变量是不是存在MacVim.app/Contents/Resources/Vim/RUNTIME/SYNTAX/PYTHON.VIM"
let g:python_highlight_space_errors  = 0
let g:python_highlight_indent_errors = 0
"""AUTO_PAIRS"""
let g:AutoPairs = {'(':')','[':']','{':'}',"'":"'",'"':'"','```':'```','"""':'"""',"'''":"'''","`":"`"}
"""VIM-PEEKABOO"""
let g:peekaboo_window  = L("VERT LEFTABOVE 60NEW") 
let g:peekaboo_compact = 0
"""VIM-VISUAL-MULTI"""
let g:VM_theme             = L('SAND')
let g:VM_silent_exit       = 1
let g:VM_highlight_matches = 'hi! link Search PmenuSel'
"""VIM-EASYMOTION"""
let g:EasyMotion_prompt   = '•••••••••••请输入两个字母:'
let g:EasyMotion_verbose  = 0
let g:EasyMotion_keys     = L('0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ').'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
let g:EasyMotion_do_shade = 1
highlight EasyMotionTarget2Second GUIFG=RED
highlight EasyMotionTarget2First  GUIFG=BLUE
"""RAINBOW"""
let g:rainbow_active = 1
let g:rainbow_conf   = {L('GUIFGS') : ['#FF0000','#FF00FF','#8B008B','#006400','#000000','#0000FF','#FFFF00']}
"""ZFVIMIM"""
let g:ZFVimIM_keymap            = 0
let g:ZFVimIM_showKeyHint       = 0
let g:ZFVimIM_freeScroll        = 1
let g:ZFVimIM_openapi_enable    = 1
let g:ZFVimIM_cloudSync_enable  = 0
let g:ZFVimIM_cloudSync_confirm = 1
let g:ZFVimIM_predictLimit      = 50
"""UNDOTREE"""
let g:undotree_HelpLine           = 0
let g:undotree_DiffAutoOpen       = 0
let g:undotree_ShortIndicators    = 1
let g:undotree_SetFocusWhenToggle = 1
let g:undotree_DiffpanelHeigh     = 30
let g:undotree_CustomUndotreeCmd  = L("VERT LEFTABOVE 20NEW") 
"""VIM-MARK"""
if has("GUI_RUNNING")
  let s:COLOR=['#0000FF','#FF0000','#FF00FF','#006400','#008B8B','#00FFFF','#8B008B','#1E90FF',"#00CED1"]
  let g:mwPalettes={"original":[]}
  for e in s:COLOR
    call add(g:mwPalettes["original"],{"guibg":e,"guifg":"WHITE"})
  endfor
endif
let g:mwMaxMatchPriority = 100
"""ASYNCRUN"""
let g:asyncrun_encs      = L('GBK')
let g:asyncrun_encs      = L('UTF-8') "设置QUICKFIX窗口中的编码
let g:asyncrun_rootmarks = s:RootMark
if has("SOUND")
  if has("Mac")
    let s:Path = expand('~/Vim/PlugIn/MSG.WAV')
  else
    let s:Path = expand($VIM."/PlugIN/MSG.WAV")
  endif
  let g:asyncrun_exit = "call sound_playfile('".s:Path."') | call SetStlClCs(0)" "任务完成后播放声音
endif
"""VIM-TERMINAL-HELP"""
let g:terminal_close       = 1
let g:terminal_height      = &lines/2
let g:terminal_auto_insert = 1
if has("Mac") && has("GUI_RUNNING")
  let g:terminal_key='≠'
  tnoremap π <C-_>"0
  tnoremap – <C-_>"0
endif
if has("Win32")
  let g:terminal_shell=&shell.' /K CLS'
endif
let g:terminal_rootmarkers = s:RootMark
"""VIM-FLOATERM"""
let g:floaterm_autoclose   = 2
let g:floaterm_rootmarkers = s:RootMark
let g:floaterm_position    = L("BOTTOMRIGHT")  
let g:FlTerminalHeight     = 50
if has("Win32")
  let g:floaterm_shell = &shell.' /K CLS'
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""COC"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("Mac")
  let g:coc_config_home = "~/VIM/PlugIn"
  let g:coc_data_home   = "~/Coc"
  let g:coc_node_path   = "NODE"
else
  let g:coc_config_home = '$VIM/PlugIn/'
  let g:coc_data_home   = "C:/Coc"
endif
let g:coc_disable_uncaught_error     = 1
let g:coc_disable_transparent_cursor = 1
let g:node_client_debug              = 0
let g:coc_global_extensions=[
    \ L("COC-CSS"         ),
    \ L("COC-SQL"         ),
    \ L("COC-XML"         ),
    \ L("COC-WORD"        ),
    \ L("COC-CALC"        ),
    \ L("COC-JSON"        ),
    \ L("COC-YANK"        ),
    \ L("COC-HTML"        ),
    \ L("COC-CMAKE"       ),
    \ L("COC-PAIRS"       ),
    \ L("COC-LUALS"       ),
    \ L("COC-CLANGD"      ),
    \ L("COC-VIMLSP"      ),
    \ L("COC-PYRIGHT"     ),
    \ L("COC-FLOATERM"    ),
    \ L("COC-TSSERVER"    ),
    \ L("COC-SOLIDITY"    ),
    \ L("COC-HIGHLIGHT"   ),
    \ L("COC-TRANSLATOR"  ),
    \ L("COC-MARKETPLACE" ),
    \ L("COC-MARKDOWNLINT")]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""NERDTREE""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIgnore = [
  \ ".GIF$",".TTF$",".WAV$",".ISO$",".MKV$",".DMG$",".APP$",".PDB$",".MP4$",".APK$",".IPA$",".ZIP$",
  \ ".PDF$",".PNG$",".PSD$",".CHM$",".MSI$",".BIN$",".DLL$",".DOC$",".EXE$",".GIT$",".ICO$",".JPG$",
  \ ".LNK$",".MP3$",".SLN$",".SVN$",".TMP$",".PYC$",".XLS$",".OBJ$",".MAP$",".BIZ$",".APP$",".PSB$",
  \ "-LOCK",".META$",".PPTX$",".JPEG","PACKAGE.JSON","NODE_MODULES"
  \ ]

let g:NERDTreeSortOrder = ["\/$",".TS$",".JS$",".LUA$",".PY$",".TXT$",".JSON$",".BAT$",".C$",".CPP$",".JAVA$",".CS$","LNK$"]
let g:NERDTreeMapMenu                       = '0'
let g:NERDTreeWinSize                       = 25 
let g:NERDTreeNotificationThreshold         = 888
let g:NERDTreeStatusline                    = " " "不显示状态栏
let g:NERDTreeMinimalUI                     = 1   "不显示Press帮助信息
let g:NERDTreeShowBookmarks                 = 1   "显示书签
let g:NERDTreeCaseSensitiveSort             = 0   "排序时是否大小写敏感
let g:NERDTreeChDirMode                     = 3   "自动切换工作目录
let g:NERDTreeBookmarksSort                 = 0   "书签不排序
let g:NERDTreeAutoCenter                    = 0   "新的Tab中打开的文件不在NERDTree中垂直居中
let g:NERDTreeHighlightCursorline           = 1   "高亮光标所在行
let g:nerdtree_tabs_open_on_new_tab         = 1   "在新建的TAB中打开NERDTree
let g:nerdtree_tabs_synchronize_view        = 0   "多个窗口间不同步NERDTree-开启的话会出问题
let g:nerdtree_tabs_open_on_gui_startup     = 1   "随VIM自动打开
let g:nerdtree_tabs_open_on_console_startup = 1   "随控制台打开而打开
let g:NERDTreeDirArrowExpandable            = '►'
let g:NERDTreeDirArrowCollapsible           = '🔻' 
if has("Win32")
  let g:NERDTreeBookmarksFile = $VIM.'/PlugIn/BmWin.TXT' "Path.Vim61
  autocmd VimEnter * exec "NERDTree" | setlocal nocursorline | wincmd p 
else
  autocmd VimEnter * if argc()== 0 | exec "NERDTree ~/Desktop" | wincmd p | endif "默认进入桌面
  let g:NERDTreeBookmarksFile = $HOME.'/Vim/PlugIn/BmMac.TXT'
  let g:nerdtree_tabs_smart_startup_focus = 2
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""Lf""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("PYTHON3") "考虑远程终端VI
  let g:Lf_PythonVersion = 3
else
  let g:Lf_PythonVersion = 2
endif
let g:Lf_ReverseOrder          = 1
let g:Lf_GtagsAutoGenerate     = 0
let g:Lf_AutoResize            = 0
let g:Lf_Exception             = 0
let g:Lf_HighlightIndividual   = 1
let g:Lf_RememberLastSearch    = 0
let g:Lf_GtagsAutoUpdate       = 0
let g:Lf_HideHelp              = 1
let g:Lf_GtagsSkipUnreadable   = 1
let g:Lf_PopupShowFoldcolumn   = 0
let g:Lf_PreviewInPopup        = 1
let g:Lf_RgHighlightInPreview  = 1
let g:Lf_PopupShowStatusline   = 1
let g:Lf_ShowRelativePath      = 1
let g:Lf_CursorBlink           = 0
let g:Lf_PopupAutoAjustHeight  = 0
let g:Lf_PopupShowBorder       = 0
let g:Lf_WindowHeight          = 9
let g:Lf_ShowDevIcons          = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_DevIconsFont          = ""
let g:Lf_PopupAutoAdjustHeight = 0
let g:Lf_WorkingDirectoryMode  = 'Ac'
let g:Lf_MruMaxFiles           = 100
let g:Lf_DefaultMode           = "NameOnly"
let g:Lf_UseCache              = 1
let g:Lf_MruEnableFrecency     = 1
let g:Lf_QuickSelect           = 0
let g:Lf_WindowPosition        = L("POPUP")
let g:Lf_PreviewPosition       = L("TOP"  )
let g:Lf_PopupPreviewPosition  = L("TOP"  )
let g:Lf_RootMarkers           = s:RootMark
let g:Lf_Gtagslabel            = L('NATIVE-PYGMENTS')
let g:Lf_StlSeparator          = {'left':'','right':''}
let g:Lf_PreviewResult         = {'File':0,'BookMark':0,'Mru':0,'Tag':1,'BufTag':1,'Function':1,'Line':1,'Rg':1,'Gtags':1,'Quickfix':1}
let g:Lf_WildIgnore            = { 
  \ 'dir'  : ['Vimfiles','NODE_MODULES','Coc.nVim-M',L('__TESTS__')],
  \ 'file' : ['*.PLIST',"*.PREFAB",'*.META',"**/BUILD/INDEX.JS"]
  \ }
let g:Lf_NormalCommandMap = {"*":{"<C-Down>":"<C-J>","<C-Up>":"<C-K>","q":"<Esc>"}}
for e in g:NERDTreeIgnore
  call add(g:Lf_WildIgnore['file'],"*".strpart(L(e),0,len(e)-1))
endfor
if has("Win32")
  let g:Lf_CacheDirectory = "C:/Coc/LfLog"
endif

"""RG搜索忽略的文件和目录需要单独设置-区分大小写"""
let g:Lf_RgConfig = [
   \ "--max-columns=150",
   \ "--glob=!Vimfiles",
   \ "--glob=!Coc.nVim-M",
   \ "--glob=!".L("Temp"),
   \ "--glob=!".L("OBJS"),
   \ "--glob=!".L("__TESTS__"),
   \ "--glob=!".L("NODE_MODULES"),
   \ "--glob=!".L("**/BUILD/INDEX.JS"),
   \ ]

"插件的加载是异步的"
function! SetLfSizeInfo()
  let g:Lf_PopupHeight         = 9+2                                "显示5个选项+上下边框各占一行
  let g:Lf_PopupWidth          = &columns-(g:NERDTreeWinSize+1)-2-2 "NERDTREE+分割线-2是左右各空一列-2是弹出窗口的左右边框
  let g:Lf_PopupPosition       = [&lines-2-g:Lf_PopupHeight,(g:NERDTreeWinSize+1)+1+1] "锚点为左上角:-2是命令行+状态栏占用的行数-列从NERDTREE+分割线+空一行
  let g:Lf_PreviewPopupWidth   = g:Lf_PopupWidth                    "预览窗口的宽度
  let g:LF_PreViewWindowHeight = g:Lf_PopupPosition[0]-1-1-1        "除去命令行+状态栏+最上面空一行
  let g:LF_PreViewWindowHeight = g:Lf_PopupPosition[0]-1-1+3        "底部边框重叠
  let g:Lf_PopupWidth          = &columns-(g:NERDTreeWinSize+1)
  let g:Lf_PopupPosition       = [&lines-g:Lf_PopupHeight+100,(g:NERDTreeWinSize+1)]
  let g:Lf_PreviewPopupWidth   = g:Lf_PopupWidth
  if &filetype=="CMAKE"
    sil! exec L("SYNTAX ON") 
  endif
endfunction
sil! call SetLfSizeInfo() "MacVIM需要先调用
autocmd VimEnter,VimResized * call SetLfSizeInfo() "在VimEnter事件之后才能获取到正确的全屏状态下的行和列
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("Win32")
  autocmd! GUIEnter * sim ~x | winpos 0 0 "启动VIM时窗口最大化
  autocmd! BufwritePost C:/Vim/Vimrc.Vim source C:/Vim/Vimrc.Vim | sim ~x "改变此配置文件将立即生效
  set tags=./Tags;,Tags
  set tags+=D:/TAGS
  set gfn=Go_Mono:h16:b
  set lsp=0 "行间距
  set rop=type:directx "显示彩色表情
  set novisualbell "去掉屏幕闪烁候
else
  set noimdisable "Insert模式返回Normal的时候自动切换为英文输入法
  autocmd! InsertLeave * set imdisable   | set iminsert=0
  autocmd! InsertEnter * set noimdisable | set iminsert=0
  "autocmd! VimEnter    * source ~/Vim/Vimrc.Vim
  autocmd! BufwritePost ~/Vim/Vimrc.Vim source ~/Vim/Vimrc.Vim
  autocmd! BufNewFile,BufRead *.REG setlocal filetype=Reg
  highlight Search GUIBG=#FFFF00
  set gfn=Monaco:h20
  set lsp=-3
  set visualbell
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number             "显示行数
set hidden             "可以在不保存当前BUF的情况下跳转到别的BUF
set nowrap             "不自动换行
set showcmd            "输入的命令显示出来
set mouse=a            "启动对鼠标的支持
set t_Co=256           "终端开启256色支持
set wrapscan           "允许循环查找
set wildmenu           "VIM自身命令行模式智能补全
set autoread           "自动加载
set hlsearch           "搜索高亮-远程终端需要
set incsearch          "开启实时搜索功能
set autochdir          "自动切换当前目录为工作目录
set expandtab          "将TAB变为于2个空格
"set verbose=9         "可以用来查看一个动作执行了哪些自动命令
set smartcase          "查找的时候智能大小写
set autoindent         "自动缩进
set ignorecase         "不区分大小写
set lazyredraw         "寄存器和其它不通过输入的命令时屏幕不会重画窗口
set cursorline         "高亮光标所在的文本行
set nowrapscan         "禁止循环查找
set noshowmode         "不在命令行显示模式切换的信息
set smartindent        "智能缩进
"set viminfo+=!        "退出的时候保存一些信息=>下次启动的时候还可以还原
set winwidth=30        "当前窗口的最小列数
set scrolloff=0        "覆盖8.1中的默认值
set helplang=cn        "设置帮助文档的预言
set cmdheight=1        "设置命令行的高度
set history=100        "记录历史命令100条
set winfixwidth        "窗口打开或者关闭的时候保持宽度
set pumwidth=10        "补全菜单的最小宽度
set winfixheight       "窗口打开或者关闭的时候保持高度
set pumheight=10       "补全菜单的最大高度
set noerrorbells       "去掉错误提示声音
set foldcolumn=0       "在行号前面不显示折叠标记列
set laststatus=2       "总是显示状态栏
set titlelen=200       "设置标题栏最大长度
set termguicolors      "终端下开启真彩色
set foldclose=all      "自动关闭折叠
set showtabline=0      "不显示标签页
"set signcolumn=no      "在行号的前面不在显示其他信息In任何情况下
set winaltkeys=no      "不用ALT键访问菜单-ALT键组合可以被映射
set shortmess=aiTF     "不显示启动信息-精简一些信息的输出在命令行(如用SHIFT+B切换文件的时候)和启动页面
set updatetime=300     "自动重新加载文件时间Coc
set winminheight=0     "全局设置最小高度
set winminwidth=25     "所有窗口的最小宽度
set titlestring=【%t】%F  "设置标题栏内容 
set encoding=UTF-8     "这是文件编码-解决提示框中文乱码问题-以及控制中乱码问题
set textwidth=88888    "一行最多可以有多少字符
set redrawtime=50000   "语法高亮的超时时间
set background=light   "背景色
set guioptions=gter!   "GO选项
set fillchars=vert:•   "垂直分隔条的填充字符-VertSplit:GUIFG
set fillchars=         "垂直分隔条的填充字符
set foldmethod=manual  "手动折叠
set makeencoding=char  "使用系统语言
"set foldlevelstart=99 "禁用代码折叠
set guitablabel=%N:%t  "在标签页上显示序号
set clipboard+=unnamed "使用系统剪切板
set whichwrap+=<,>,[,],h,l,b        "使指定的左右移动光标的键在行首或行尾可以移到前一行或者后一行
"set complete-=k complete+=k        "<Ctrl-X><Ctrl-K>组合键太麻烦=>直接将字典补全添加到默认补全列表中
set completeopt=menu,longest        "在补全列表中存在公共的最长字串时将其直接上屏
set guicursor=n-ci-c:Block-Blinkon0 "禁止光标闪烁
set nobackup nowritebackup noundofile noswapfile
function! Fol()
  return repeat("▼",g:Lf_PopupWidth)
endfunction
set foldtext=Fol() "设置折叠后显示的文本-必须调用函数来设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""自动命令"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd CursorHold  * checktime                                                                                                                                                                       
autocmd InsertLeave * setlocal cursorline 
autocmd InsertEnter * setlocal nocursorline
autocmd BufReadPre  *.PNG,*PKM,*.CSB exec "%!XXD -r"
autocmd BufNewFile,BufRead *.MANIFEST set filetype=JSON
"autocmd BufWinEnter *.LUA sil! loadview  打开后会导致CTRL+I失效
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""配色"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Normal       GUI=NONE GUIBG=#C7EDCC GUIFG=#000000
highlight LineNR       GUI=NONE GUIBG=NONE    GUIFG=#0000FF
highlight Cursor       GUI=NONE GUIBG=#FF0000 GUIFG=#FFFF00
highlight lCursor      GUI=NONE GUIBG=#0000FF GUIFG=#00FF00
highlight NonText      GUI=NONE GUIBG=NONE    GUIFG=#C7EDCC
highlight Terminal     GUI=NONE GUIBG=#000000 GUIFG=#FFFFFF
highlight Floaterm     GUI=NONE GUIBG=#000000 GUIFG=#FFFFFF
highlight StatusLine   GUI=NONE GUIBG=#006400 GUIFG=#FFFF00
highlight StatusLineNC GUI=NONE GUIBG=#006400 GUIFG=#FFFFFF
highlight CursorLineNR GUI=NONE GUIBG=#76EE00 GUIFG=#FF0000
highlight CursorLine   GUI=NONE GUIBG=#76EE00 GUIFG=#000000
highlight Pmenu        GUI=NONE GUIBG=#006400 GUIFG=#FFFF00
highlight PmenuSel     GUI=NONE GUIBG=#FF0000 GUIFG=#FFFFFF
highlight PmenuSbar    GUI=NONE GUIBG=#FF0000 GUIFG=#FF0000
highlight PmenuThumb   GUI=NONE GUIBG=#0000FF GUIFG=#000000
highlight TODO         GUI=NONE GUIBG=NONE    GUIFG=#0000FF
highlight Folded       GUI=NONE GUIBG=NONE    GUIFG=#FF0000
highlight String       GUI=NONE GUIBG=NONE    GUIFG=#191970
highlight Identifier   GUI=NONE GUIBG=NONE    GUIFG=#0000FF
highlight SignColumn   GUI=NONE GUIBG=#FF0000 GUIFG=#FFFF00
highlight CocHintLine  GUI=NONE GUIBG=#FF0000 GUIFG=#FF0000
highlight CocHintSign  GUI=NONE GUIBG=#006400 GUIFG=#FFFFFF
highlight KeyWord      GUI=NONE GUIBG=NONE    GUIFG=#A52A2A
highlight Identifier   GUI=NONE GUIBG=NONE    GUIFG=#0000FF
highlight Comment      GUI=NONE GUIBG=NONE    GUIFG=#555555
highlight Conceal      GUI=NONE GUIFG=#000000 GUIBG=#C7EDCC
"""COC"""
highlight CocPumDetail            GUI=NONE GUIBG=NONE GUIFG=#FF00FF
highlight CocPumSearch            GUI=NONE GUIBG=NONE GUIFG=#FFFFFF
highlight CocPumShortcut          GUI=NONE GUIBG=NONE GUIFG=#FFFF00
highlight CocSemTypeNamespace     GUI=NONE GUIBG=NONE GUIFG=#FF00FF
highlight CocSemTypeType          GUI=NONE GUIBG=NONE GUIFG=#0000FF
highlight CocSemTypeClass         GUI=NONE GUIBG=NONE GUIFG=#0000FF
highlight CocSemTypeEnum          GUI=NONE GUIBG=NONE GUIFG=#0000FF
highlight CocSemTypeInterface     GUI=NONE GUIBG=NONE GUIFG=#000099
highlight CocSemTypeStruct        GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeTypeParameter GUI=NONE GUIBG=NONE GUIFG=#808080 "类型说明
highlight CocSemTypeParameter     GUI=NONE GUIBG=NONE GUIFG=#006400
highlight CocSemTypeVariable      GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeProperty      GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeEnumMember    GUI=NONE GUIBG=NONE GUIFG=#2F4F4F
highlight CocSemTypeEvent         GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeFunction      GUI=NONE GUIBG=NONE GUIFG=#6A0DAD
highlight CocSemTypeMethod        GUI=NONE GUIBG=NONE GUIFG=#6A0DAD
highlight CocSemTypeMacro         GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeKeyword       GUI=NONE GUIBG=NONE GUIFG=#0000FF
highlight CocSemTypeModifier      GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeComment       GUI=NONE GUIBG=NONE GUIFG=#555555
highlight CocSemTypeString        GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeNumber        GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeBoolean       GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeRegexp        GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeOperator      GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemTypeDecorator     GUI=NONE GUIBG=NONE GUIFG=#000000
highlight CocSemModDeprecated     GUI=NONE GUIBG=NONE GUIFG=#000000

"""JavaScript/TypeScript"""
highlight jsComment               GUI=NONE GUIBG=NONE GUIFG=#555555
highlight typescriptComment       GUI=NONE GUIBG=NONE GUIFG=#555555
highlight typescriptLineComment   GUI=NONE GUIBG=NONE GUIFG=#555555
highlight default link typescriptBlock keyword
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if !has("GUI_RUNNING")
  colorschem MURPHY
  highlight NonText GUI=NONE GUIBG=NONE GUIFG=BLACK
else
  sil! call MacVimSetSLC()
  autocmd ColorScheme * call MacVimSetSLC()
endif

function! ShowCs(TID)
  highlight Cursor GUI=NONE GUIBG=RED GUIFG=YELLOW
endfunction

function! HideCs()
  highlight Cursor GUI=NONE GUIBG=NONE GUIFG=NONE
endfunction

function! SetBufStl()
  let l:Cur=bufnr("%")
  if &filetype==?"NERDTREE" 
    if line(".")==1
      call cursor(len(g:NERDTreeBookmark.Bookmarks())+4,0)
    endif
  endif
  if expand("%f")=="" || &buftype==?'NOFILE' || &buftype==?'TERMINAL' || &buftype==?"HELP"
    call setbufvar(l:Cur,'&cursorline', "1")
    call setbufvar(l:Cur,'&statusline',"%*")
    if &filetype==?"NERDTREE" || &buftype==?"HELP" || &filetype==?"BUFEXPLORER"
      sil! exec L("WINCMD P")
      setlocal nocursorline
      sil! exec L("WINCMD P")
      if &buftype==?"HELP"
        call setbufvar(l:Cur,'&number',1)
        call setbufvar(l:Cur,'&statusline',StatusLineSimple())
      else
        call HideCs()
      endif
    endif
    return
  endif
  if &filetype==?"VIM" 
    set nofoldenable
    call SetLfSizeInfo()
  elseif &filetype==?"TEXT"
    set syntax=ZFTXT
  elseif &filetype==?"PYTHON"
    syntax keyword PythonClassVar self
    highlight PythonClassVar GUI=NONE GUIBG=NONE GUIFG=#0000FF
  endif
  for n in tabpagebuflist()
    if n==l:Cur
      call setbufvar(n,'&cursorline',"1")
      call setbufvar(n,'&foldcolumn',"0")
      call setbufvar(n,'&statusline',SetStatusLines())
    else
      call setbufvar(n,'&statusline',"%*")
      call setbufvar(n,'&cursorline',"0" )
    endif
  endfor
  call ShowCs(0)
endfunction

function! SetStlClCs(Statue)
  "echom "a:Statue=".a:Statue." filetype=".&filetype." BufType=".&buftype." expand(%f)=".expand("%f")
  if a:Statue==0
    sil! call AutoPairsTryInit()
    if tabpagenr("$")>1
      highlight VertSplit GUIBG=#000000 GUIFG=#000000
    else
      highlight VertSplit GUIBG=#006400 GUIFG=#006400
    endif
    exec L("1MATCH NONE")
    call SetBufStl()
    if expand("%:t")==?"VIMRC.VIM"
      sil! call HiVimCf()
      setlocal conceallevel=2 | syntax match HIDE /#/ conceal cchar=• containedin=ALL | setlocal concealcursor=n
    else
      for i in range(109,121)
        sil! call matchdelete(i)
      endfor
    endif
    if &filetype==?"LEADERF"
      call HideCs()
    endif
  else
    if &filetype==?"NERDTREE" 
      call OneMatch()
    endif
  endif
  call OnFileTypeEvent()
endfunction

augroup SetStlClCsAug
  autocmd!  
  autocmd BufWinEnter,BufEnter,WinEnter * call SetStlClCs(0)
  autocmd BufWinLeave,BufLeave,WinLeave * call SetStlClCs(1)
augroup END

function! HiVimCf()
  call matchadd(Y("Special" ),"<Leader>",                           0,109)
  call matchadd(L("KeyWord" ),"Plug\\s\\+"                         ,0,110)  
  call matchadd(L("KeyWord" ),"Leaderf!*\\s"                       ,0,111)  
  call matchadd(L("KeyWord" ),"&\\@<=\\w\\+"                       ,0,112)
  call matchadd(Y("Type"    ),"[agls]:\\w\\+"                      ,0,113)
  call matchadd(L("KeyWord" ),"!\\@<!AsyncRun"                     ,0,114)
  call matchadd(L("KeyWord" ),":\\@<=exec\\(\s*(*\\)\\@="          ,0,115)
  call matchadd(L("KeyWord" ),"\\(>:\\)\\@<=\\w\\+!*\\s\\+"        ,0,116)
  call matchadd(Y("Function"),"\\s\\w\\+\\s\\(:call\\)\\@="        ,0,117)
  call matchadd(L("KeyWord" ),"\\(\\s\\+:\\)\\@<=\\w\\+!*\\s\\+"   ,0,118)
  call matchadd(Y("Function"),"\\(call\\s\\+\\)\\@<=\\w\\+(\\@="   ,0,119)
  call matchadd(Y("Function"),"\\(function!*\\)\\@<=\\s\\w\\+(\\@=",0,120)
  call matchadd(Y("Type"    ),"\\(^\\s*highlight\\)\\@<=\\s\\+\\w\\+\\s\\+\\(GUI\\)\\@=",0,121)
endfunction

function! RootPath() "猜测工程的根目录-来源于Ag.Vim
  let l:SearchDIRs=split(getcwd(), "\\") "TODO-Mac上需要修改
  let l:RelPath='.' "相对路径
  while len(l:SearchDIRs)>2
    let l:SearchDIR=''.join(l:SearchDIRs,'/').'/'
    for l:Marker in s:RootMark
      if filereadable(l:SearchDIR.l:Marker) || isdirectory(l:SearchDIR.l:Marker)
        return l:RelPath
      endif
    endfor
    let l:RelPath=l:RelPath."/.."
    let l:SearchDIRs=l:SearchDIRs[0:-2]
  endwhile
  return getcwd()
endfunction

function! SearchByChrome(m) "用浏器搜索
  echohl LineNR
  if a:m=='v'
    let l:Word=GetVisualSelection()
  else
    let l:Word=input("▇请输入需要百度搜索的内容:",expand("<cword>"))
  endif
  if l:Word!=""
    let URL=L("HTTPS://WWW.BAIDU.COM/S?WD=".l:Word)
    if has("Win32")
      sil! exec '!START '.URL
    elseif has("Mac")
      sil! exec "!Open \"".URL."\""
    endif
  endif
endfunction

function! RgWorld()
  echohl LineNR
  let l:Word=input("▇▇▇▇▇请输入需要搜索的内容:",has("Mac") ? " " : "")
  if getchar(0)==27
    return "只在WIN下有效"
  endif
  if has("Mac")&&l:Word==""
    return
  elseif trim(l:Word) == ""
    exec "Leaderf! rg --nowrap -w -e ".expand("<cword>")
  else
    exec "Leaderf! rg --nowrap ".trim(l:Word)
  endif
endfunction

function! RgWorldInVisual()
  let V1 = getpos("'<")[2]-1
  let V2 = getpos("'>")[2]-1
  let V3 = getline(getpos("'<")[1])[V1:V2]
  exec "Leaderf! rg --nowrap ".trim(V3)
endfunction

function! CmdMode()
  call ShowCs(0)
  call feedkeys(":")
endfunction

function! CleanupWhitespaceSemicolons()
  exec "%s/^ *$/"
  exec "%s/; *$/"
  exec "%s/\\n\\{3,}/\\r\\r"
  exec "w"
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""按键映射"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader="\<Space>" 
function! LfP(n)
  let g:Lf_PreviewInPopup=a:n
endfunction

nnoremap <silent><Leader>b :call LfP(1)<CR>:exec("Leaderf! BookMark --popup-height ".min([11,(len(GetBmSource(""))+2)]))<CR>
nnoremap <silent><silent>8 :call LfP(1)<CR>:exec("Leaderf! rg -w --current-buffer --nowrap ".expand("<cword>"))<CR>
nnoremap <silent><silent>M :call LfP(0)<CR>:exec("Leaderf  mru --no-split-path --nowrap --no-sort --project")<CR>
nnoremap <silent><silent>m :call LfP(0)<CR>:exec("Leaderf  mru --no-split-path --nowrap")<CR>
nnoremap <silent><silent>f :call LfP(0)<CR>:exec("Leaderf  file     --nowrap --fullPath ")<CR>
nnoremap <silent><C-]>     :call LfP(1)<CR>:exec("Leaderf  tag      --nowrap --cword")<CR>
nnoremap <silent><silent>f :call LfP(0)<CR>:exec("Leaderf  file     --nowrap ")<CR>
nnoremap <silent><Leader>f :call LfP(1)<CR>:exec("Leaderf  function --nowrap ")<CR>
nnoremap <silent><Leader>l :call LfP(1)<CR>:exec("Leaderf  line     --nowrap ")<CR>
nnoremap <silent><Leader>g :call LfP(1)<CR>:exec("LeaderfEverything"          )<CR>
nnoremap <silent><F8>      :call LfP(1)<CR>:exec("Leaderf! rg --belowright --nowrap ".expand("<cword>"))<CR>
nnoremap <silent><silent>? :call LfP(1)<CR>:call RgWorld()<CR>
vnoremap <C-\><C-n>?       :call LfP(1)<CR>:call RgWorldInVisual()<CR>
nnoremap <silent><silent>, :exec("Leaderf! buffer     ")<CR>
nnoremap <silent><silent>r :exec("Leaderf! --recall   ")<CR>
nnoremap <silent><M-1>     :exec("Leaderf! --next     ")<CR>
nnoremap <silent><M-2>     :exec("Leaderf! --previous ")<CR>

function! JumpFile()
  if &filetype==?"LUA"
    call LfP(1)
    let l:CMD ="Leaderf! file --auto-preview --cword"
    sil! exec l:CMD
  else
    let @a=""
    try
      normal! "ayi"
    finally
      normal! "ayi'
    endtry
    let l:CMD ="Leaderf! file --auto-preview --regexMode --auto-jump --jump-tab --input "
    let l:CMD ="Leaderf! file --auto-preview --regexMode --input "
    let l:Path=substitute(@a,"/","\\\\\\\\","g")
    let l:Path=substitute(l:Path,"^SCRIPTS\\\\\\","","")
    if stridx(@a,L("HTTPS://"))!=-1 || stridx(@a,L("HTTP://"))!=-1
      if has("Win32")
        sil! exec 'AsyncRun START '.L(@a)
      elseif has("Mac")
        exec "!Open \"".L(@a)."\""
      endif
      return
    elseif stridx(@a,L(".TS"))!=-1
      sil! exec 'AsyncRun CODE '.@a
      return
    endif

    if @a!=""
      let l:Suff=".".&filetype
      if &filetype==?"Cpp" || &filetype==?"h"
        let l:Suff=""
      endif
      call LfP(1)
      sil! exec l:CMD.l:Path.l:Suff
    else
      "打开MD文档中的超链接"
      normal! "ayi(
      if @a==""
        normal! gv"ay
      endif
      let @a=L(@a)
      if stridx(@a,L("HTTPS://"))!=-1 || stridx(@a,L("HTTP://"))!=-1
        if has("Win32")
          exec '!START '.L(@a)
        elseif has("Mac")
          exec "!Open \"".L(@a)."\""
        endif
      elseif &buftype==?'TERMINAL'
        normal! "ayy
        let l:Path=substitute(@a,"\\","\\\\\\\\","g")
        sil! exec l:CMD.l:Path
      endif
    endif
  endif
endfunction
"根据路径查找文件
nnoremap gf :call JumpFile()<CR>
vnoremap gf :call JumpFile()<CR>

function! JumpFunc()
  call LfP(1)
  let g:Lf_RgHighlightInPreview=0
  let l:CMD=""
  if &filetype==?'LUA' 
    "要使^匹配行首必须给正则加上双引号"
    let l:CMD=printf("\"^\\s*function\\s+\\w*[:.]?%s\\s*\\(\"",expand("<cword>"))
  elseif &filetype==?'Python'
    let l:CMD=printf("def\\s+%s\\(",expand("<cword>"))
  elseif &filetype==?'Vim'
    let l:CMD=printf("function[!]*\\s+%s\\(",expand("<cword>"))
  elseif &filetype==?'Cpp'
    let l:CMD=printf("\\s*\\w+\\s+\\w*:{0,2}%s\\s*\\(",expand("<cword>"))
  endif
  if l:CMD!=""
    let l:CMD="Leaderf! rg --nowrap ".l:CMD
    exec l:CMD
  endif
endfunction
"查找函数定义"
nmap <silent> F :call JumpFunc()<CR>

function! GoToDef()
  call HideCs()
  call CocActionAsync('jumpDefinition')
  sleep 80m
  call ShowCs(1)
endfunction

"跳转类型定义"
nmap <silent><nowait> gy <Plug>(coc-type-definition)
"跳转到定义"
nmap <silent><nowait> gd :call GoToDef()<CR>
"跳转到实现"
nmap <silent><nowait> gi <Plug>(coc-implementation)
"跳转到引用"
nmap <silent><nowait> gr <Plug>(coc-references)
"重  命  名"
function! Rn()
  call CocActionAsync(L('ReName'))
endfunction
com! Rn :call Rn()

function FmtCurBuf()
  call CocActionAsync(L('FORMAT'))
endfunction
com! FMT :call FmtCurBuf()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:coc_enable_locationlist   = 0
let g:coc_quickfix_open_command = ''
function! FindAllReferences()
  exec "cgetexpr []"
  call CocAction('jumpReferences')
  sleep 10m
  call LfP(1)
  exec "Leaderf! quickfix --nowrap"
endfunction
nmap <silent> gr :call FindAllReferences()<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> ee <Plug>(coc-diagnostic-next)
function! OnSave()
  if &filetype==?"LUA" || &filetype==?"TypeScript" 
    "先屏蔽诊断
    "sil! call CocAction('diagnosticRefresh',bufnr('%'))
    "call CocActionAsync(L('FORMAT'))
  end
  if &filetype==?'TypeScript'
    "sil! exec "CocCommand tsserver.executeAutofix"
    "sil! call CocActionAsync('runCommand','editor.action.organizeImport')
    "sil! exec "%s/;$//g"
    "sleep 500m
    "exec "w"
  elseif &filetype==?"JavaScript"
    "sil! exec "%s/;$//g"
    "sil! exec "w"
  endif
endfunction
autocmd! BufwritePost * call OnSave()
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
abbr AS  AsyncStop
abbr As  AsyncStop
abbr U8  set fileencoding=UTF-8

nnoremap ` <C-W><C-W>
tnoremap ` <C-\><C-N><C-W><C-W><C-W><C-W>
nnoremap B <C-^>  "在最近的两个缓冲区之间进行切换
nnoremap <C-F> <C-D>
nnoremap <C-B> <C-U>
inoremap <C-F> <C-D>
inoremap <C-B> <C-U>
"inoremap <C-J> <C-N>
"inoremap <C-K> <C-P>

nnoremap <Leader>2       :call SearchByChrome("n")<CR>
vnoremap <Leader>2       :call SearchByChrome("v")<CR>
nnoremap <Leader>0       :<Plug>MarkClear<CR> "解决下面的映射跟插件的映射冲突的问题
nnoremap <Leader>n       :MarkClear<CR>
nnoremap <Leader>h       :exec('h '.expand('<cword>'))<CR>
nnoremap <Leader>t       :<C-u>Ydc<CR>
nnoremap <Leader>j       <Plug>(easymotion-bd-jk)
nnoremap <Leader>k       <Plug>(easymotion-overwin-line)
nnoremap <Leader>s       <Plug>(easymotion-s2)
nnoremap <Leader>w       <Plug>(easymotion-bd-w)
nnoremap <Leader>e       <Plug>(easymotion-bd-e)
nnoremap <Leader>1       <Plug>(easymotion-lineanywhere)
nnoremap <silent>Y       :<C-u>Yde<CR>
nnoremap <silent>;       :call CmdMode()<CR>
nnoremap <silent>.       :exec("nohlsearch")<CR>
"nnoremap <silent>o       <Esc>==o
"nnoremap <silent><S-o>   <Esc>==<S-o>
inoremap <silent><M-h>   <LEFT>
inoremap <silent><M-j>   <LEFT>
inoremap <silent><M-k>   <RIGHT>
inoremap <silent><M-l>   <RIGHT>
inoremap <silent><M-;>   <RIGHT>
inoremap <silent><Tab>   <RIGHT>
inoremap <silent><S-Tab> <LEFT>
nnoremap <silent><Tab>   :bprev<CR> 
nnoremap <silent><S-Tab> :bnext<CR> 
vnoremap <silent><C-T>   :<C-u>Ydv<CR> "可视模式下按CTRL+T
nnoremap <silent><C-T>   :<C-u>Ydc<CR>
nnoremap <silent> <F2>   :NERDTreeToggle<CR>:call SetLfSizeInfo()<CR>
nnoremap <silent> <F2>   :call Rn()<CR>
nnoremap <silent> <F3>   :call F3()<CR>
nnoremap <silent> <F4>   :call OpenQuickfix(2)<CR>
nnoremap <silent> <F5>   :call Complie()<CR>
nnoremap <silent> <F6>   :call Run()<CR>
nnoremap <silent>b       :call CloseCurBuf()<CR>
nnoremap <silent>u       :sil! undo<CR> "可以避免打印日志信息(下同)"
nnoremap <silent><C-Z>   :sil! undo<CR>
nnoremap <silent><C-Y>   :sil! redo<CR>
nnoremap <silent><C-R>   :sil! redo<CR>
nnoremap <silent><M-Down> <Plug>(VM-Add-Cursor-Down)
nnoremap <silent><M-Up>   <Plug>(VM-Add-Cursor-Up)
nnoremap <silent><Leader>; :sil! call CleanupWhitespaceSemicolons()<CR><CR>

"Coc用TAB来选择补全选项
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#next(1) : CheckBackspace() ? "\<Tab>" : coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
 
"换行的时候自动缩进本行"
"inoremap <silent><expr><CR> col('.')==col('$') ? "\<Esc>==o" : "\<CR>\<Esc>k==ji"
nnoremap <expr> <2-LeftMouse> foldclosed(line('.'))==-1 ? "\<2-LeftMouse>" : L('ZO')

function! OnFileTypeEvent()
  if &filetype==?"LUA"
    set tabstop=4 shiftwidth=4
    "nnoremap <silent>s ==:w<CR>
  else
    set tabstop=2 shiftwidth=2 
    nnoremap <silent>s :w<CR>
  endif
  let l:T=&filetype
  if l:T==?"C" || l:T==?"Cpp" || l:T==?"ObjC" || l:T==?"ObjCpp"
    noremap <buffer><silent> <F10> :exec "CocCommand clangd.switchSourceHeader" <CR>
  elseif l:T==?"TypeScript" || l:T==?"JavaScript"
    noremap <buffer><silent> <F10> :call FSwitch('%','')<CR>
  else
    noremap <buffer><silent> <F10> :call feedkeys('&')<CR>:call feedkeys("s")<CR>
  endif
endfunction
autocmd FileType * call OnFileTypeEvent()

if has("Win32")
  nnoremap <silent>EE    :source $VIM/Vimrc.Vim<CR>
  nnoremap <silent>ED    :hide edit $VIM/Vimrc.Vim<CR> "隐藏当前文件编辑Vimrc.Vim文件
  nnoremap <silent><F7>  :exec(g:CmdK)<CR>
  nnoremap <silent><F9>  :browse w<CR> "另存为
  nnoremap <silent><F9>  :AsyncRun START %:h<CR>
  nnoremap <silent><F12> :exec "AsyncRun -encoding=GBK ".$VIM."\\TOOLS\\LUATag.Py"<CR>
else
  nnoremap <silent>EE    :source ~/Vim/Vimrc.Vim<CR>
  nnoremap <silent>ED    :hide edit ~/Vim/Vimrc.Vim<CR>
  nnoremap <silent><F9>  :exec("AsyncRun Open .")<CR>
  nnoremap <silent><F11> :exec(L("SIM ~X")      )<CR>
endif
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""正常终端"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Vim 还没切到普通模式就收到:q命令直接被吞映射失效.故用函数延时
function! NormalTelClose()
  for n in tabpagebuflist()
    if getbufvar(n,'&buftype')==?"TERMINAL"
      call term_sendkeys(n,"\<C-c>exit\<CR>")
      let WinIDs = win_findbuf(n)
      if len(WinIDs)==1
        call win_execute(WinIDs[0], "silent! close!")
      endif
    endif
  endfor
  sil! exec "FloatermKill!"
  sil! exec "cclose"
endfunction

nnoremap <silent><M-k> <C-\><C-N>:call NormalTelClose()<CR>

function! NormalTelOpen()
  tnoremap B <C-\><C-N><C-^>
  tnoremap <buffer><silent><M-p> <C-_>"* 
  tnoremap <buffer><silent><M-k> <C-\><C-N>:call NormalTelClose()<CR>
  tnoremap <buffer><silent><M-c> <C-\><C-N>:call RunCMDInNorTel('CD /D '.shellescape(getcwd()  ).'&&CLS \r')<CR>
  tnoremap <buffer><silent><M-d> <C-\><C-N>:call RunCMDInNorTel('CD /D '.expand("~").'\\Desktop&&CLS    \r')<CR>
  tnoremap <buffer><silent><M-r> <C-\><C-N>:call RunCMDInNorTel('CD /D '.shellescape(RootPath()).'&&CLS \r')<CR>
  tnoremap <buffer><Esc> <C-\><C-N>:call TerminalToggle()<CR>
  tnoremap <buffer><Esc> <C-\><C-N>
  tnoremap <buffer><M--> <C-\><C-N>:resize +1<CR>i
  tnoremap <buffer><M-0> <C-\><C-N>:resize -1<CR>i
endfunction
autocmd TerminalOpen * call NormalTelOpen()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""悬浮终端"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ChangeDIR(Path)
  sil! exec "FloatermSend!".'CD /D '.shellescape(a:Path)."&&CLS"
endfunction
function! OnFloTelOpen()
  "在MacVIm下会出现主题颜色错乱
  if has("Win32")
    syntax on
  endif
  setlocal nonumber
  setlocal cursorline
  tnoremap <silent><buffer><M-p> <C-W>"+
  tnoremap <silent><buffer><M-k> <C-\><C-N>:FloatermKill!<CR>
  tnoremap <silent><buffer><Esc> <C-\><C-N>:FloatermToggle<CR>
  tnoremap <silent><buffer><Esc> <C-\><C-N>
  tnoremap <silent><buffer><M--> <C-\><C-N>:FloatermToggle<CR>
  tnoremap <silent><buffer><M-0> <C-\><C-N>:FloatermToggle<CR>
  tnoremap <silent><buffer><M-c> <C-\><C-N>:call ChangeDIR(getcwd()  )<CR>i
  tnoremap <silent><buffer><M-d> <C-\><C-N>:call ChangeDIR(expand("~").'\Desktop')<CR>i
  tnoremap <silent><buffer><M-r> <C-\><C-N>:call ChangeDIR(RootPath())<CR>i
  tnoremap <silent><buffer><m-=> =
endfunction
autocmd! User FloatermOpen call OnFloTelOpen()
nnoremap <silent><M--> :let g:FlTerminalHeight=&lines/2<CR>:FloatermToggle<CR>
nnoremap <silent><M-0> :let g:FlTerminalHeight=20<CR>:FloatermToggle<CR>
nnoremap <silent><F7>  :let g:FlTerminalHeight=&lines-1<CR>:FloatermToggle<CR>
tnoremap <silent><F7>  <C-\><C-N>:FloatermToggle<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! F3()
  call chdir(expand('%:h'))
  sil! exec "NERDTree . | wincmd p"
endfunction

function! QfConv()
  let Qflist=getqflist()
  for i in Qflist
      let i.text = iconv(i.text,"CP936","UTF-8")
  endfor
  call setqflist(Qflist)
endfunction

function! OpenQuickfix(OnOff)
  let l:HasOpen=0
  for n in tabpagebuflist()
    if getbufvar(n,'&buftype')==?"QUICKFIX"
      let l:HasOpen=1
      break
    endif
  endfor
  if a:OnOff>0
    if a:OnOff==2 && l:HasOpen
      exec "cclose"
    elseif !l:HasOpen
      if 1 "在底部
        exec "copen 9"
        call feedkeys("\<C-W>p")
      else "在右边
        exec "vertical botright copen 40"
        "call feedkeys("\<C-W>L")
      endif
      setlocal scrolloff=1
      setlocal number
      setlocal nowrap
    endif
  else
    exec "cclose"
  endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""编译运行"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("Win32")
  let g:CmdK="!START CMD.EXE /K D:/OOO/KJJ/CC.exe"
  let g:CSC ="C:/WINDOWS/MICROSOFT.NET/FRAMEWORK/V3.5/CSC.EXE"
else
  let g:CmdK="!"
endif

function! Complie()
  sil! exec "w"
  let l:IsOpenQf=1
  if &filetype==?'C'
    exec "AsyncRun Clang % -o %<.exe"
  elseif &filetype==?'Cpp'
    exec "AsyncRun Clang++ -w -std=c++14 % -o %<.exe"
  elseif &filetype==?'Lua'
    exec "AsyncRun -encoding=UTF8 LUA %"
  elseif &filetype==?'Sh'
    exec "!chmod a+x %"
    exec "AsyncRun ./%"
  elseif &filetype==?'DosBatch'
    exec "AsyncRun -encoding=GBK %"
  elseif &filetype==?'RUBY'
    exec "AsyncRun RUBY %"
  elseif &filetype==?'Python'
    let l:IsOpenQf=0
    let l:RunStyle=1
    if l:RunStyle==0
      exec "AsyncRun -mode=term -pos=bottom -rows=20 -focus=1 -reuse Python %"
    elseif l:RunStyle==1
      let l:IsOpenQf=1
      exec "AsyncRun -encoding=UTF8 -scroll=1 Python %"
    elseif l:RunStyle==2
      exec "!Python %"
    elseif l:RunStyle==3
      call RunCMDInNorTel("Python ".expand("%"),0)
    elseif l:RunStyle==4
      sil! exec "FloatermNew --autoclose=1 PYTHON ".expand("%")
    elseif l:RunStyle==5
      exec "AsyncRun -mode=term -pos=floaterm Python %"
    endif
  elseif &filetype==?'Java'
    exec "AsyncRun -encoding=GBK JAVAC -d . %"
  elseif &filetype==?'AutoHotKey'
    exec "AsyncRun START %"
  elseif &filetype==?'Html'
    let l:IsOpenQf=0
    exec "AsyncRun START %"
  elseif &filetype==?'Cs'
    exec "AsyncRun ".g:CSC." %"
  elseif &filetype==?"JavaScript"
    let l:RunStyle=0
    if l:RunStyle==0
      exec "AsyncRun -encoding=UTF8 NODE %"
    elseif l:RunStyle==1
      let l:IsOpenQf=0
      exec "AsyncRun -mode=term NODE %" 
    elseif l:RunStyle==2
      exec "AsyncRun BABEL-NODE %"
    endif
  elseif &filetype==?"TYPESCRIPT"
    if !executable("TSC")
      exec L("!NPM INSTALL -G TYPESCRIPT")
    endif
    if 1
      if !executable("TS-NODE")
        exec L("!NPM INSTALL -G TS-NODE")
      endif
      "需配置TSCONFIG.JSON文件
      exec "AsyncRun! -scroll=1 TS-NODE ".expand("%:t:r").L(".TS")
    else
      let g:asyncrun_exit="let g:asyncrun_exit='call SetStlClCs(0)' | AsyncRun Node.exe ".expand('%:t:r').L(".JS")
      exec "AsyncRun TSC ".expand("%:t:r").L(".TS")
    endif
  elseif &filetype==?"OBJC"
    exec "AsyncRun CLang -fobjc-arc -framework Foundation % -o %<.exe"
  elseif &filetype==?"JSON"
    let l:IsOpenQf=0
    exec L("%!PYTHON -M JSON.TOOL")
    "let Cmd = L('%!PYTHON3 -C "IMPORT SYS,JSON;DATA=JSON.LOAD(SYS.STDIN);PRINT(JSON.DUMPS(DATA,INDENT=2,ENSURE_ASCII=')
    "exec Cmd.'False))"' | exec 'w'
  elseif &filetype==?"CSS"
    let l:IsOpenQf=0
    exec L("!NPX PRETTIER --write %")
  endif
  call OpenQuickfix(l:IsOpenQf)
endfunction

function! Run()
  if &filetype==?'Java'
    exec "AsyncRun JAVA %<"
  elseif &filetype==?'Lua'
    call RunCMDInNorTel("SET PATH=C:\\VIPS8.12\\BIN;%PATH%&&LuaJit ".expand("%"),0)
  elseif has("Win32") 
    exec "AsyncRun %<.exe"
  else
    exec "AsyncRun ./%<.exe"
  endif
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""自定义命令""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:TopMostStatue=0
function! TopMostStyle() "置顶
  if s:TopMostStatue==0
    let s:TopMostStatue=1
    set go-=r
  else
    let s:TopMostStatue=0
    set go+=r
  endif
  setlocal number!
  exec "NERDTreeToggle"
  call feedkeys("\<C-W>p")
  call libcallnr("VIMTWEAK.DLL","SetAlpha",255)
  call libcallnr("VIMTWEAK.DLL","EnableTopMost",s:TopMostStatue)
endfunction
com! TopMostStyle :call TopMostStyle()

function! SVNUp()
  exec "AsyncRun".L(" -MODE=TERM -ROWS=20 SVN UPDATE <ROOT>/../")
endfunction
com! -nargs=* SVNUp :call SVNUp()

function! SVNRevert()
  exec "AsyncRun".L(" -MODE=TERM -ROWS=20 SVN REVERT . --DEPTH INFINITY")
endfunction
com! -nargs=* SVNRevert :call SVNRevert()

function! GetVisualSelection()
  try
    let l:aSave=@a
    normal! gv"ay
    return @a
  finally
    let @a=l:aSave
  endtry
  return ""
endfunction

function! CopyPath()
  let @*=expand('%:p')
endfunction
com! CopyPath :call CopyPath()

function! CopyFileName()
  let @*=expand('%:t')
endfunction
com! CopyFileName :call CopyFileName()

function! XG()
  sil! exec 's/\\/\//g | nohlsearch'
endfunction
com! XG :call XG()

function! GX()
  sil! exec 's/\//\\/g | nohlsearch'
endfunction
com! GX :call GX()

function! Tab2Space()
  sil! exec "%s/	/ /g | w"
endfunction
com! Tab2Space :call Tab2Space()

function! DelM() "删除符号^M和^@
  sil! exec "%s/\\r//g | %s/CTRL+SHIFT+2//g | w"
endfunction
com! DelM :call DelM()

function! DelBomB() "去掉BomB标记
  sil! exec "set nobomb | w"
endfunction
com! DelBomB :call DelBomB()

function! DelSpaceInHeadAndTail() "去掉行首和行尾的空格
  sil! exec "%s/	/ /g | %s/^ *//g | %s/ *$//g | w"
endfunction
com! DelSpaceInHeadAndTail :call DelSpaceInHeadAndTail()

function! Blk2Row() "空格变换行
  sil! exec "%s/	/ /g | %s/ /\\r/g | nohlsearch"
endfunction
com! Blk2Row :call Blk2Row()

function! DelBlkRow() "删除空白行
  sil! exec "%s/	/ /g | g/^\\s*$/d "
endfunction
com! DelBlkRow :call DelBlkRow()

function! DelDupRow() "删除重复行
  sil! exec "g/^\\(.*\\)$\\n\\1$/d "
endfunction
com! DelDupRow :call DelDupRow()

function! DelChinese() "删除所有中文
  sil! exec "%s/\\v[^\\X00-\\XFF]+//g | nohlsearch"
  call DelBlkRow()
endfunction
com! DelChinese :call DelChinese()

function! DelEnglish() "仅仅保留中文
  sil! exec "%s/\\v[\\x00-\\xFF]+//g | nohlsearch"
  call DelBlkRow()
endfunction
com! DelEnglish :call DelEnglish()

function! MakeDIR(DIRName) "创建文件夹
  call mkdir(a:DIRName,"p")
endfunction
com! -nargs=1 MakeDIR :call MakeDIR("<args>")

function! ChangePT() "中文的标点符号替换为英文的
  sil! exec '%s/。/./g | %s/，/,/g | %s/“/\"/g | %s/”/\"/g | %s/：/:/g | %/？/?/g | %s/！/!/g | %s/（/(/g | %s/）/)/g'
endfunction
com! ChangePT :call ChangePT()

function! AddLineNum(...) "给每一行加上行号
  let H=line(".")
  let T=get(a:000,0,"$")
  sil exec H.",".T.'s/^/\=printf("%02d、",line(".")-H)/g'
endfunction
com! -nargs=* AddLineNum :call AddLineNum(<f-args>)

function! Align(AlignChar="=")
  exec "normal! vip"
  call feedkeys("\<Plug>(EasyAlign)")
endfunction
com! -nargs=? Align :call Align(<f-args>)
"定义快捷键跟VSCODE中保持一致
nnoremap <silent><M-a> :call Align()<CR> 

function! CopyMessages()
  sil! exec 'redir @+ | 100message | redir END'
endfunction
com! CopyMessages :call CopyMessages()

"权限保存
function! SaveByRoot()
  exec L('W !SUDO TEE %')
endfunction
com! SaveByRoot :call SaveByRoot()

function! RefDNS() "刷新DNS
  exec "!IPCONFIG /FLUSHDNS"
endfunction
com! RefDNS :call RefDNS()

function! Calc() "打开计算器
  exec "AsyncRun Calc"
endfunction
com! Calc :call Calc()

function! Control() "打开控制面板 
  exec "AsyncRun CONTROL" 
endfunction
com! Control :call Control()

function! Mstsc() "打开远程桌面连接
  exec "!START Mstsc" 
endfunction
com! Mstsc :call Mstsc()

function! RunCMDInNorTel(CMD,...)
  call feedkeys("\<m-=>\<C-\>\<C-N>")
  call TerminalSend(a:CMD." \r")
  call feedkeys("\<m-=>")
  if a:0>0 "不获得焦点
    call feedkeys("\<m-K>") 
  endif
endfunction

function! ADBLog() "抓取安卓+模拟器日志 https://WWW.CNBLOGS.COM/KANEKIKEN/P/9527697.HTML
  let l:CMD=L("CHCP 65001 && ADB CONNECT 127.0.0.1:7555 && ADB LOGCAT")
  let @*=L("ADB LOGCAT --PID=")
  if 0
    call RunCMDInNorTel(l:CMD)
  else
    let l:CMD = "Python ".$HOME.L("/Desktop/ADBHelp.Py")
    exec "FloatermNew  --name=ADBLog"
    exec "FloatermSend --name=ADBLog ".l:CMD
  endif
endfunction
com! ADBLog :call ADBLog()

"远程执行命令
function! RemBUILD()
  let l:CMD=L("LINK.EXE -SSH -L GAMEAREA -PW 123456 192.168.103.63 Python3 IPA_BUILD.Py")
  call RunCMDInNorTel(l:CMD)
endfunction
com! RB :call RemBUILD()

function! LocBUILD()
  let l:CMD=$HOME.L("/Desktop/AS_BUILD_APK.Py")
  call RunCMDInNorTel(l:CMD)
endfunction
com! LB :call LocBUILD()

"显示远程文件内容
function! ShowRemTXT()
  exec L("E")." SCP://Gamearea@192.168.60.47/NOTE.TXT"
endfunction
com! SRN :call ShowRemTXT()

"直接打开WIN的环境变量设置
function! OpenSysEnvPath()
  exec "AsyncRun RUNDLL32 SYSDM.CPL,EditEnvironmentVariables"
endfunction
com! SysEnvPath :call OpenSysEnvPath()

"打开远程文件进行编辑
let g:netrw_silent=1
let g:netrw_scp_cmd=L("PSCP.EXE -PW 123456 -q")
function! OpenRemFile()
  if s:IsSelf
    exec "e SCP://o@192.168.160.128/Vim/Vimrc.Vim"
  else
    exec "e SCP://Gamearea@192.168.60.47/Vim/Vimrc.Vim"
  endif
endfunction
com! OpenRemFile :call OpenRemFile()

function! SSH()
  if s:IsSelf
    let l:CMD="C:/GIT/USR/BIN/SSH.EXE o@192.168.3.20"
  else
    let l:CMD="C:/GIT/USR/BIN/SSH.EXE chquser1@192.168.90.10"
  endif
  if 0
    exec "FloatermNew ".l:CMD
    exec "FloatermSend YR888888"
    exec "FloatermSend ".L("CD Desktop&&CLEAR")
  else
    call RunCMDInNorTel(l:CMD)
    if s:IsSelf
      let l:CmdStr = "123456\<CR>source ~/.profile\<CR>CD Desktop\<CR>CLEAR\<CR>"
    else
      let l:CmdStr = "YR888888\<CR>source ~/.profile\<CR>CD Desktop\<CR>CLEAR\<CR>"
    endif
    call TerminalSend(l:CmdStr)
  endif
endfunction
com! SSH :call SSH()

function! PUTTY()
  let l:CMD=expand("~/DESKTOP/PUTTY.EXE.LNK")
  exec "AsyncRun START ". l:CMD
endfunction
com! PUTTY :call PUTTY()

function! CloseCurBuf()
  let l:Sum=len(filter(range(1,bufnr('$')),'buflisted(v:val)'))
  if l:Sum>1
    let l:Flag=0
    for n in tabpagebuflist() "TAB
      if n==bufnr("%")
      else
        let l:BufType=getbufvar(n,'&buftype' )
        let l:FilType=getbufvar(n,'&filetype')
        if l:BufType==?"QUICKFIX" || l:BufType==?'NOFILE' || l:FilType==?"NERDTREE"
          "TODO"
        else
          let l:Flag=1
          break
        endif
      endif
    endfor
    if l:Flag 
      "当前在终端或者悬浮终端的情况"
      if &buftype==?"TERMINAL"
        if &filetype==?"FLOATERM"
          sil! exec "FloatermKill!"
        else
          sil! exec L("QUIT")
        endif
      else
        sil! exec L("BD ").bufnr("%")
      endif
    else
      if tabpagenr("$")>1 
        sil! exec L("TABCLOSE | BD ").bufnr("%")
      else
        sil! exec L("BP | BD ").bufnr("%")
      endif
    endif
  else
    sil! exec L("QUIT")
  endif
endfunction

function! CloseAllBuf()
  let Cur=bufnr("%")
  let Sum=bufnr("$")
  let i=1
  while i<=Sum
    if i!=Cur && stridx(bufname(i),"NERD")==-1
      sil! exec i.",".i."bd" 
    endif
    let i=i+1
  endwhile
endfunction
com! CloseAllBuf :call CloseAllBuf()

function! ComplieCoc()
  if has("Mac")
    let l:DirPath='~/Vim/PlugIN/Coc.NVim'
    let l:JSPath =l:DirPath.'/BUILD/INDEX.JS'
  else 
    let l:DirPath=$VIM.'\PlugIN\Coc.NVim'
    let l:JSPath =l:DirPath.'\BUILD\INDEX.JS'
  endif
  if !executable("UGLIFYJS")
    exec L("!NPM INSTALL -G UGLIFY-JS")
  endif
  if !executable("YARN")
    exec L("!NPM INSTALL -G YARN")
  endif
  exec '!YARN install --frozen-lockfile --cwd '.l:DirPath
  exec '!UGLIFYJS '.l:JSPath.' -o '.l:JSPath
endfunction
com! ComplieCoc :call ComplieCoc()

function! PyCallBack(Chan,Msg)
  echohl LineNR
  echo repeat("▇",g:NERDTreeWinSize).":".a:Msg
  echohl None
endfunction
function! Blame()
  let l:CMD=printf("Python3 %s/PlugIN/Blame.Py %s %s",expand("$VIM"),expand("%:p"),line("."))
  call job_start(l:CMD, {'out_cb' : "PyCallBack"})
endfunction
com! Blame :call Blame()

function! SearchWord(...)
  echohl LineNR
  let l:Word=input("▇▇▇▇▇请输入需要搜索的内容:",expand("<cword>"))
  if l:Word!=""
    let g:asyncrun_exit="let g:asyncrun_exit='' | Leaderf! quickfix "
    let SearchPath=get(a:000,0,RootPath())
    exec "AsyncRun -silent Rg -o --vimgrep -w -s ".l:Word." ".SearchPath
  endif
endfunction
com! -nargs=* SearchWord :call SearchWord(<f-args>)

function! DecApk()
  exec "!JAVA -jar ".$VIM."/TOOLS/APKTOOL_2.6.0.JAR d %"
endfunction
com! DecApk :call DecApk()

function! MacVimKeyMapFile()
  exec L("HIDE EDIT")." /Applications/MacVim.app/Contents/Resources/Vim/RunTime/MSWIN.Vim"
endfunction
com! MacVimKeyMapFile :call MacVimKeyMapFile()

function! LineReverse()
  exec "g/^/m0O"
endfunction
com! LineReverse :call LineReverse()

function AddQue()
  let CurWord = expand('<cword>') "获取当前光标所在单词
  let CurCol = col('.')
  for i in range(1,CurCol)
    let Word = expand('<cword>')
    if Word==CurWord 
      let CurPos = col('.')
      let CurChar = getline('.')[CurPos-1]
      if stridx(CurWord,CurChar)<0
        exec "normal! l"
        if CurChar=='.'
          let New = '["'.CurWord.'"]'
          exec "normal! ciw".New
          exec "normal! " .CurPos."|x"
        else
          let New = '"'.CurWord.'"'
          exec "normal! ciw".New
        endif
        call setpos('.',[0,line('.'),CurCol+1,0])
        break
      endif
    endif
    exec "normal! h"
  endfor
  exec "w"
endfunction
"nnoremap <silent><F4> :call AddQue()<CR>

function! ExecSaveCmdResult(Cmd)
  redir > CmdResult.TXT
  exec a:Cmd
  redir END
endfunction
com! -nargs=* ExecSaveCmdResult :call ExecSaveCmdResult(<f-args>)

function! KillExe(Cmd)
  exec '!TASKKILL /IM '.a:Cmd.'.exe /F /T'
endfunction
com! -nargs=* KillExe :call KillExe(<f-args>)

"删除多余的协议操作封装
function! SearchWorld()
  exec "Mark ".expand("<cword>")
  call LfP(1)
  exec "Leaderf! rg --nowrap -w -e ".expand("<cword>")
  "删除当前行并保存(不要跟在下面一行的后面会导致LSP无法跳转)
  exec L("D | W") 
endfunction
"nnoremap <Left> :call SearchWorld()<CR>
"nnoremap <Down> :.,/^$/d<CR>:w<CR> "删除直到空白行
"nnoremap <Right> <C-^> "返回上一个文件

function! TL()
  let URL=L("HTTPS://T"."W"."I"."T"."T"."E"."R".".C"."O"."M/W"."H"."Y"."Y"."O"."U"."T"."O"."U"."Z"."H"."E"."L"."E")
  if has("Win32")
    sil! exec '!START '.URL
  elseif has("Mac")
    sil! exec "!Open \"".URL."\""
  endif
endfunction
com! TL :call TL()

function! HTTP()
  sil! exec "AsyncRun -mode=term -pos=floaterm Python -m http.server 80"
endfunction
com! HTTP :call HTTP()

function! JsonCheck()
try
  call json_decode(join(getline(1,'$'),"\n"))
  echo "JSON格式正确"
catch
  echoerr "JSON格式错误"
endtry
endfunction
com! JsonCheck :call JsonCheck()

"查看当前高亮设置信息
function ShowHiInfo()
  echo synIDattr(synID(line("."),col("."),1),"name") 
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("Win32")
  if s:IsSelf 
    let g:BookMarks = [
      \ "【Demo•LUA代码】 F:/Demo/assets/Src/MAIN.LUA",
      \ "【XXXX•LUA代码】 F:/XXX/assets/Src/MAIN.LUA",
      \ "【全民•LUA代码】 F:/CQ/ClIENT/RUNTIME/ASSETS/SCRIPTS/MAIN.LUA",
      \ "【H5•封神•代码】 F:/H5/ASSETS/SCRIPTS/SINGLETONBASE.TS",
      \ "【H5•引擎•源码】 F:/Ccc/CREATOR/3.6.3/RESOURCES/RESOURCES/3D/ENGINE/COCOS/CORE/SCENE-GRAPH/BASE-NODE.TS",
      \]
  else
    let g:BookMarks = [
      \ "【H5•塔防•代码】 E:/H5/ASSETS/SCRIPTS/SINGLETONbASE.TS",
      \ "【H5•原始•代码】 E:/H5原始/ASSETS/SCRIPTS/SINGLETONbASE.TS",
      \]
  endif
  call add(g:BookMarks,"【桌面◄►◄►目录】 ~/DESKTOP/")
  call add(g:BookMarks,"【H5•引擎•源码】 C:/COCOSCREATOR/RESOURCES/ENGINE/COCOS2D/CORE/BASE-NODES/CCSGNode.JS")
  call add(g:BookMarks,"【◄►坚*果*云◄►】 D:/我的坚果云/")
  call add(g:BookMarks,"【VIM•插件列表】 C:/Vim/Plugin/")
  call add(g:BookMarks,"【COC扩展•目录】 C:/COC/")
  call add(g:BookMarks,"【域名HOST文件】 C:/WINDOWS/SYSTEM32/DRIVERS/ETC/HOSTS")
  call add(g:BookMarks,"【VSC•样式文件】 C:/VSC/RESOURCES/APP/OUT/VS/WORKBENCH/WORKBENCH.DESKTOP.MAIN.CSS")
else
  let g:BookMarks = [
    \ "【主◄►◄►◄►◄►页】 ~/NOTE.TXT",
    \ "【桌◄►◄►◄►◄►面】 ~/DESKTOP/HelloWorld.LUA",
    \ "【书◄►◄►◄►◄►签】 ~/Vim/PlugIN/BmMac.TXT",
    \ "【域名HOST文件】 /ETC/HOSTS",
    \ "【◄►◄►Demo◄►◄►】 /Users/o/Desktop/Demo/assets/Src/Main.Lua",
    \ "【◄►◄►XXXX◄►◄►】 /Users/o/Desktop/XXX/assets/Src/Main.Lua",
    \ "【传奇•CPP代码】 ~/DOCUMENTS/CQ/FRAMEWORKS/RUNTIME-SRC/CLASSES/APPDELEGATE.CPP",
    \]
endif

function ShowCocStatus()
  "echohl LineNR
  let V1 = CocAction('currentWorkspacePath')
  let V2 = substitute(coc#status(),'.*正在加载工作目录\s*','文件加载:','n')
  let V2 = substitute(V2,'\s','•','n')
  let V3 = "•••••••••••••••••••••••••工作目录:".GetShortPath(V1)
  if stridx(V2,"文件加载")!=-1
    let V4 = substitute(V2,'\v(95|96|97|98|99)\%','100%','g')
    echo V3." ".V4
  endif
endfunction
autocmd! User CocStatusChange call ShowCocStatus()

let ShortPathCfg = [
  \ [".*/\\?VIM/\\?"      ,"►gVim◄"],
  \ [".*DEMO.*ASSETS"     ,"►Demo◄"],   
  \ [".*USERS.*DESKTOP"   ,"►桌面◄"],   
  \ [".*CQ.*SCRIPTS"      ,"►全民◄"],   
  \ ["D:.CL_WBQJ.*SCRIPTS","►千金◄"],   
  \ ["E:.CL.*TMP.*SCRIPTS","►紫金◄"],   
  \ ["D:.*XZTACT.*SCRIPTS","►百货◄"],   
  \]

function GetShortPath(FullPath)
  let Path = substitute(a:FullPath,"\\","/","g")
  for e in g:ShortPathCfg
    if match(Path,e[0]."\\c")!=-1
      let Value = substitute(Path,e[0],e[1],"")
      let Value = substitute(Value,"CONFIG.SERVER.CONFIG","配置","")
      return Value
    endif
  endfor
  return Path
endfunction

function! GetBmSource(Args)
  let T=[]
  for i in g:BookMarks
    let Path=expand(split(i," ")[1])
    if filereadable(Path) || isdirectory(Path)
      call add(T,i)
    endif
  endfor
  return T
endfunction

function! BookMarksACCEPT(LineData,Args)
  let Path=expand(split(a:LineData," ")[1])
  if isdirectory(Path) && stridx(split(a:LineData," ")[0],"目录")!=-1
    call chdir(Path)
    sil! exec "NERDTree"  
  else
    exec L('EDIT ').Path
    sil! call chdir(expand('%:h'))
    sleep 100m
    sil! exec "NERDTree . | wincmd p"
    sleep 100m
    setlocal cursorline
    if stridx(split(a:LineData," ")[0],"代码")!=-1
      exec "CocRestart"
      sil! call CloseAllBuf()
    endif
  endif
endfunction

if !exists('g:Lf_Extensions')
  let g:Lf_Extensions = {}
endif
let g:Lf_Extensions.BookMark = {
   \ "source"      : 'GetBmSource',
   \ "arguments"   : [{"name": [L("PATTERN")],"nargs": '*'}],
   \ "accept"      : "BookMarksACCEPT",
   \ "after_enter" : "",
   \ "before_exit" : "",
   \ "highlights_def" : 
   \   { 
   \     "Word1": '【.*目录】',
   \     "Word2": '传奇',
   \     "Word3": '/\@<!\w\+\W\@=\.\@!',
   \     "Word4": '\w:.*/',
   \     "Word5": '\~/.*/',
   \     "Word6": 'LUA\@<=代码',
   \     "Word7": 'CPP\@<=代码',
   \   },
   \ "highlights_cmd": 
   \  [
   \    "highlight Word1 GUIFG=#0000FF",
   \    "highlight Word2 GUIFG=#FF0000",
   \    "highlight Word3 GUIFG=#FF00FF",
   \    "highlight Word4 GUIFG=#0000FF",
   \    "highlight Word5 GUIFG=#0000FF",
   \    "highlight Word6 GUIFG=#FF0000",
   \    "highlight Word7 GUIFG=#FF00FF",
   \  ],
   \} 

function Print()
  let Data=""
  if &filetype==?'LUA'
    let Match = matchstr(getline('.'),'self.'.expand('<cword>'))
    if !empty(Match)
      if stridx(getcwd(),'⑨⑨⑥')!=-1
        let Data = 'SL:dump('.Match.')'
      else
        let Data = 'dump('.Match.')'
      endif
    else
      if stridx(getcwd(),'⑨⑨⑥')!=-1
        let Data = 'SL:dump('.expand('<cword>').')'
      else
        let Data = 'dump('.expand('<cword>').')'
      endif
    endif
  elseif &filetype==?"VIM" 
    let Data = 'echom '.expand('<cword>')
  elseif &filetype==?"CPP" 
    let Data = 'std::count<<'.expand('<cword>').'<<std::endl;'
  elseif &filetype==?"Python" || &filetype==?"TypeScript" || $filetype==?"JavaScript" 
    if &filetype==?"TypeScript" 
      let Pre = 'cc.'
    else
      let Pre = ''
    endif
    let Data = Pre.'Log("'.expand('<cword>').":\",".expand('<cword>').')'
  endif
  if Data!=""
      "模拟按键o换行(缩进)+插入内容+Esc退出插入模式
      call feedkeys("o".Data."\<Esc>","n")
      if expand("%:t")!=?"VIMRC.VIM"
        call feedkeys(":w\<CR>",'n')
      endif
  endif
endfunction
nnoremap <leader>p :call Print()<CR>

nnoremap <silent><F1> :call RunCMDInNorTel("Rg -l ".expand("<cword>"),0)<CR>
nnoremap <silent><F1> :exec("g/".expand("<cword>")."/d" )<CR>
nnoremap <silent><F1> :exec('set guifont=*')<CR>
nnoremap <silent><F1> :call LfP(1)<CR>:exec("Leaderf! rg -w --nowrap ".expand("<cword>"))<CR>

function! SearchByEverything()
  let Dir = "E:/ZJ_ZHE"
  sil! exec "AsyncRun C:/EVERYTHING/EVERYTHING.EXE -p ".Dir." -s ".expand("<cword>")
endfunction
"nnoremap <silent><F1> :call SearchByEverything()<CR>

function! SeByUIDCcc()
  let Path_1 = $HOME."\\Desktop\\SeByUID.ts"
  let Path_2 = getline('.')
  sil! exec printf("AsyncRun -post=copen TS-NODE %s %s",shellescape(Path_1),shellescape(Path_2))
endfunction
"nnoremap <silent><F1> :call SeByUIDCcc()<CR>

function! RgWord()
  let l:Path = "C:\\Vim\\Rg"
  let l:Word = expand("<cword>")
  sil! exec printf("AsyncRun -post=copen RG -w %s %s",shellescape(l:Word),l:Path)
endfunction
"nnoremap <silent><F1> :call RgWord()<CR>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""笔记备注"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"G/XX/D "删除匹配行 
"V/XX/D "保留匹配行
"<ll>>fo 将高亮光标后可见区域所有o字符
"<C-W>p回到上一次的窗口.选中当前行V
"只在*.LUA文件中搜索-t LUA 不在*.LUA文件中搜索-T LUA RG --type-list
"贪婪匹配：A.*B 非贪婪匹配：A.\{-}B
"nnoremap dd :.,/^$/d<CR>:w<CR> "删除直到空白行
"call timer_start(10,'ShowCs')
"nnoremap M :exec("mes clear")<CR>
"nnoremap m :exec("mes")<CR>
"PIP3 install psd-tools --break-system-packages
"9byLKjDsycUnZ7j uxsjbapeabvjbehc
"set quickfixtextfunc=QFTextNoBar?
"给单词两边加上{}: nnoremap [ ciw{}<Esc>P
"合并相邻两行并交换顺序: %s/\(.*\)\n\(.*\)\n/\2 \1\r/g 
"%norm! 5J 每5行合并成1行
"SVN UPDATE --USERNAME=XXX --PASSWORD=123456 --NO-AUTH-CACHE
"cc.js.getClassName
"TODO:寻路+四叉树+Shader+GIT
"YlCLU0Fjav0espTJ
