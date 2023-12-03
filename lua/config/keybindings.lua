local opt = {
    noremap = true,
    silent = true,
}

-- 本地变量
local map = vim.keymap.set

-- dap 代码调试
-- 显示调试界面
map({"i", "n", "v"}, "<leader>du", "<cmd>lua require('dapui').toggle()<CR>", opt)
-- 设置断点
map({"i", "n", "v"}, "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", opt)
-- 运行到断点
map({"i", "n", "v"}, "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", opt)
-- step over
map({"i", "n", "v"}, "<leader>de", "<cmd>lua require'dap'.step_over()<CR>", opt)
-- step into
map({"i", "n", "v"}, "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", opt)
-- step out
map({"i", "n", "v"}, "<leader>do", "<cmd>lua require'dap'.step_out()<CR>", opt)

-- 取消高亮
map({ "n" }, "<leader>nh", ":nohl<CR>", opt)

-- bufferline
-- 跳转到上一个 buffer
map({ "n" }, "<leader>bp", ":BufferLineCyclePrev<CR>", opt)
-- 跳转到下一个 buffer
map({ "n" }, "<leader>bn", ":BufferLineCycleNext<CR>", opt)
-- 关闭选中的 buffer
map({ "n" }, "<leader>bd", ":BufferLinePickClose<CR>", opt)
-- 选择 buffer
map({ "n" }, "<leader>bg", ":BufferLinePick<CR>", opt)

-- Hop 代码快速跳转
-- https://github.com/phaazon/hop.nvimdev
map({ "n" }, "<leader>fw", "<cmd>HopWord<CR>", opt)

-- nvim-tree
map({ "n" }, "<leader>ft", ":NvimTreeToggle<CR>", opt)

-- 函数快速跳转
map({ "n" }, "<leader>fs", ":SymbolsOutline<CR>", opt)

-- Codeium AI 代码智能补全
-- https://github.com/Exafunction/codeium.vim#%EF%B8%8F-keybindings
-- 接受智能补全
map("i", "<C-w>", function()
    return vim.fn["codeium#Accept"]()
end, { expr = true })
-- 清除智能补全
map("i", "<C-x>", function()
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
