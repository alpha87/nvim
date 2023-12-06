local opt = {
    noremap = true,
    silent = true,
}

-- 本地变量
local map = vim.keymap.set

-- Codeium AI 代码智能补全
-- https://github.com/Exafunction/codeium.vim#%EF%B8%8F-keybindings
-- 接受智能补全
map("i", "<c-w>", function()
    return vim.fn["codeium#Accept"]()
end, { expr = true })
-- 清除智能补全
map("i", "<c-x>", function()
    return vim.fn["codeium#Clear"]()
end, { expr = true })
-- 切换上一个提示
map("i", "<c-q>", function()
    return vim.fn["codeium#CycleCompletions"](1)
end, { expr = true })
-- 切换下一个提示
map("i", "<c-e>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
end, { expr = true })
