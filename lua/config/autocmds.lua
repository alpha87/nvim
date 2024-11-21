local autocmd = vim.api.nvim_create_autocmd

-- 保存时自动格式化代码
autocmd("BufWritePre", {
    pattern = "*",
    callback = function(args)
        require("conform").format({
            bufnr = args.buf,
            lsp_fallback = true,
        })
    end,
})

-- 退出时关闭 NvimTree 和 SymbolsOutline
autocmd("QuitPre", {
    callback = function()
        if package.loaded["symbols-outline"] then
            pcall(vim.cmd, "SymbolsOutlineClose")
        end
        if package.loaded["nvim-tree"] then
            pcall(vim.cmd, "NvimTreeClose")
        end
    end,
})
