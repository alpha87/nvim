return {
    {
        "echasnovski/mini.indentscope",
        version = "*",
        event = { "BufReadPost", "BufNewFile" },
        init = function()
            vim.api.nvim_create_autocmd("FileType", {
                pattern = {
                    "help",
                    "alpha",
                    "dashboard",
                    "neo-tree",
                    "Trouble",
                    "trouble",
                    "lazy",
                    "mason",
                    "notify",
                    "toggleterm",
                    "lazyterm",
                },
                callback = function()
                    vim.b.miniindentscope_disable = true
                end,
            })
        end,
        config = function()
            require("mini.indentscope").setup({
                draw = {
                    delay = 50,
                    priority = 2,
                },
                mappings = {
                    object_scope = "ii",
                    object_scope_with_border = "ai",
                    goto_top = "[i",
                    goto_bottom = "]i",
                },
                options = {
                    border = "both",
                    indent_at_cursor = false,
                    try_as_border = true,
                },
                symbol = "|",
            })
        end,
    },
}
