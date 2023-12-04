return {
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 450
        end,
        config = function()
            local wk = require("which-key")
            wk.register()
        end,
    },
}
