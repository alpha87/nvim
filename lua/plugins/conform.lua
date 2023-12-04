return {
    {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup({
                formatters_by_ft = {
                    lua = { "stylua" },
                    -- Conform will run multiple formatters sequentially
                    python = { "blue" },
                    -- Use a sub-list to run only the first available formatter
                    javascript = { { "prettierd", "prettier" } },
                },
            })
        end,
    },
}
