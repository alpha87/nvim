for file in split(glob("~/.config/nvim/container/*.vim"), '\n')
    exe 'source' file
endfor
