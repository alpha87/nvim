local autocmd = vim.api.nvim_create_autocmd

-- 保存时自动格式化代码
autocmd("BufWritePre", {
  pattern = "*",
  callback = function(args)
    require("conform").format({ bufnr = args.buf })
  end,
})

