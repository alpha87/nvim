return {
    {
        "numToStr/Comment.nvim",
        keys = {
            { "gc", mode = { "n", "v" }, desc = "注释切换行" },
            { "gb", mode = { "n", "v" }, desc = "注释切换块" },
        },
        config = function()
            require("Comment").setup()
        end,
    },
}
