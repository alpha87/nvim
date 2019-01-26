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
