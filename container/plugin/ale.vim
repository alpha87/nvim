" 自定义error和warning图标
let g:ale_sign_error='➤'
let g:ale_sign_warning='➢'

" 在vim自带的状态栏中整合ale
let g:ale_statusline_format=['✗ %d', '⚡︎ %d', '✔︎ ok']

" 显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_error_str='错误'
let g:ale_echo_msg_warning_str='警告'
let g:ale_echo_msg_format='[%linter%] [%code%] %s [%severity%]'

" 总是开启
let g:ale_sign_column_always=1
let g:airline#extensions#ale#enabled=1


" rainbow_parentheses 括号高亮
" 开关括号高亮 空格 , .
map <leader>,. :RainbowParenthesesToggle<CR>

" 总是开启
" au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:rbpt_colorpairs = [
                        \ ['brown',       'RoyalBlue3'],
                        \ ['Darkblue',    'SeaGreen3'],
                        \ ['darkgray',    'DarkOrchid3'],
                        \ ['darkgreen',   'firebrick3'],
                        \ ['darkcyan',    'RoyalBlue3'],
                        \ ['darkred',     'SeaGreen3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['brown',       'firebrick3'],
                        \ ['gray',        'RoyalBlue3'],
                        \ ['darkmagenta', 'DarkOrchid3'],
                        \ ['Darkblue',    'firebrick3'],
                        \ ['darkgreen',   'RoyalBlue3'],
                        \ ['darkcyan',    'SeaGreen3'],
                        \ ['darkred',     'DarkOrchid3'],
                        \ ['red',         'firebrick3'],
                        \ ]
let g:rbpt_max=256
let g:rbpt_loadcmd_toggle=0
