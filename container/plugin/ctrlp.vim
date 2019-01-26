let g:ctrlp_map='<leader>p'
let g:ctrlp_cmd='CtrlP'

" 显示最近打开的文件
map <leader>fp :CtrlPMRU<CR>

"忽略文件 wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn|rvm)$',
    \ 'file': '\v\.(exe|so|dll|zip|tar|tar.gz)$',
    \ }
