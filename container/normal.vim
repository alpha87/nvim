for f in split(glob('/root/.config/nvim/container/ftplugin/*.vim'), '\n')
    exe 'source' f
endfor

" 使用,做为Leader（热键）
let mapleader=","
noremap \ ,


" 中文帮助
set helplang=cn

" 在上下移动光标时，光标的上方或下方至少会保留显示的行数
set scrolloff=10

" 括号配对情况, 跳转并高亮一下匹配的括号
set showmatch

" How many tenths of a second to blink when matching brackets
set matchtime=2

" 命令更改会在原位置显示
set inccommand=nosplit

" 行号
set number

" 突出当前行
set cursorline

" 插入模式光标为方块
set guicursor=i:block-iCursor-blinkon0,v:block-vCursor

" 修改配色, 使用gruvbox
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark

" 语法高亮
syntax on

" 高亮search命中的文本。
set hlsearch

" 搜索时忽略大小写
set ignorecase

" 随着键入即时搜索
set incsearch

" 有一个或以上大写字母时仍大小写敏感
set smartcase

" 设置Tab键的宽度 等同的空格个数
set tabstop=4
set shiftwidth=4

" 将Tab自动转化成空格 需要输入真正的Tab键时，使用 Ctrl+V + Tab
set expandtab

" 建议行字符
set textwidth=79
set colorcolumn=79

" 按退格键时可以一次删掉 4 个空格
set softtabstop=4

" Auto indent
set ai

" Smart indent
set si
