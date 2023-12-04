return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    html = { "djlint" },
                    lua = { "stylua" },
                    python = { "blue" },
                    javascript = { { "prettierd", "prettier" } },
                    ["*"] = { "codespell" },
                },
            })
        end,
    },
}
