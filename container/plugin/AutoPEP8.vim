" autocmd FileType python noremap <buffer> <F5> :call Autopep8()<CR>
map <F5> :call Autopep8()<CR>
let g:autopep8_ignore="E501,W293"
let g:autopep8_disable_show_diff=1
let g:autopep8_diff_type='vertical'
