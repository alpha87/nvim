" 禁止使用方向键
nnoremap <Left> :echo "使用 h 左移"<CR>
nnoremap <Right> :echo "使用 l 右移"<CR>
nnoremap <Up> :echo "使用 k 上移"<CR>
nnoremap <Down> :echo "使用 j 下移"<CR>

" 控制分屏窗口大小
map <silent> <F9> <Esc>:vertical resize +3<CR>
map <silent> <F10> <Esc>:vertical resize -3<CR>
map <silent> <F11> <Esc>:resize +3<CR>
map <silent> <F12> <Esc>:resize -3<CR>

" buffer间切换
nnoremap <silent> [- :bprevious<CR>
nnoremap <silent> [= :bnext<CR>
