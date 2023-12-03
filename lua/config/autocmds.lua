local autocmd = vim.api.nvim_create_autocmd

-- 保存时自动格式化代码
autocmd("BufWrite", {
    pattern = { "*.lua", "*.py", "*.js", "*.html" },
    callback = function()
        vim.cmd("Format")
    end,
})
