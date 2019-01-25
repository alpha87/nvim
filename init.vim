for file in split(glob("/root/.config/nvim/container/*.vim"), '\n')
    exe 'source' file
endfor
