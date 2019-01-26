" <leader>fu 进入当前文件的函数列表搜索
nnoremap <Leader>fu :CtrlPFunky<CR>

" <leader>fU 搜索当前光标下单词对应的函数
nnoremap <Leader>fU :execute 'CtrlPFunky ' . expand('<cword>')<CR>
