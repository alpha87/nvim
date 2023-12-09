return {
    {
        "nvimdev/lspsaga.nvim",
        config = function()
            require("lspsaga").setup({
                ui = {
                    enable = false,
                },
            })
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons",
        },
    },
}
