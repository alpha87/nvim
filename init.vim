for file in split(glob("~/.config/nvim/container/*.vim"), '\n')
    execute 'source' file
endfor
