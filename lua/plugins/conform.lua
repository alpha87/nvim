return {
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    html = { "djlint" },
                    lua = { "stylua" },
                    python = { "isort", "blue" },
                    javascript = { { "prettierd", "prettier" } },
                    ["*"] = { "codespell" },
                },
                format_on_save = {
                    timeout_ms = 500,
                    lsp_fallback = true,
                },
            })
        end,
    },
}
