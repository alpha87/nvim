" 注释补全, 0为关闭
let g:ycm_complete_in_comments=1

" 字符串补全
let g:ycm_complete_in_strings=1

" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings=1
let g:ycm_collect_identifiers_from_tags_files=1

" 语言关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 最少字符提示
let g:ycm_min_num_of_chars_for_completion=2

" 关键字补全
let g:ycm_seed_identifiers_with_syntax=1

" 回车确认
let g:ycm_key_list_stop_completion=['<CR>']

" 获取文档
map <C-l> :YcmCompleter GetDoc<CR>

" 跳转到定义处, 分屏打开
let g:ycm_goto_buffer_command='vertical-split'
" nnoremap <leader>jd :YcmCompleter GoToDefinition<CR>
nnoremap <leader>f :rightbelow vertical YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap <leader>jl :YcmCompleter GoToDeclaration<CR>

" 引入，可以补全系统，以及python的第三方包 针对新老版本YCM做了兼容
" old version
if !empty(glob("~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py"
endif
" new version
if !empty(glob("~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"))
    let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
endif
