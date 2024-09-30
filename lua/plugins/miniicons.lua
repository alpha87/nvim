return {
    { "echasnovski/mini.nvim", version = false },
    {
        "echasnovski/mini.icons",
        config = function()
            require("mini.icons").setup({
                style = "ascii",
            })
        end,
    },
}
