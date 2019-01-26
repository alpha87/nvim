" 创建新文件自注释
autocmd BufNewFile *.py exec ":call SetComment()"

func SetComment()
    if expand("%:e")=='py'
        call setline(1, "#!/usr/bin/env python")
        call setline(2, "# -*- coding: utf-8 -*-")
        call setline(3, "")
        call setline(4, '"""')
        call setline(5, 'Desc:')
        call setline(6, '')
        call setline(7, '"""')
        execute "normal G"
        execute "normal o"
    endif
endfunc


" 插入ipdb断点
map <leader>i :call BreakPoint()<CR>

function BreakPoint()
    let trace=expand("import ipdb; ipdb.set_trace()")
    execute "normal o"
    execute "normal o".trace
    execute "normal o"
endfunction


" 快速运行
map <F8> :call RunPy()<CR>

func! RunPy()
    if &filetype=="python"
        exec "!time python %"
    endif
endfunc
