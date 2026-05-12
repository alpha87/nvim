return {
    {
        "williamboman/mason.nvim",
        event = "VeryLazy",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_pending = " ",
                        package_installed = "󰄳 ",
                        package_uninstalled = " 󰚌",
                    },

                    keymaps = {
                        toggle_server_expand = "<CR>",
                        install_server = "i",
                        update_server = "u",
                        check_server_version = "c",
                        update_all_servers = "U",
                        check_outdated_servers = "C",
                        uninstall_server = "X",
                        cancel_installation = "<C-c>",
                    },
                },

                max_concurrent_installers = 10,
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        event = "VeryLazy",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "jsonls",
                    "ts_ls",
                    "jedi_language_server",
                    "pylsp",
                    "yamlls",
                    "lemminx",
                    "taplo",
                    "pyright",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        config = function()
            local servers = { "lua_ls", "jsonls", "ts_ls", "jedi_language_server", "pylsp", "yamlls", "lemminx", "taplo", "pyright" }
            for _, server in ipairs(servers) do
                vim.lsp.enable(server)
            end
        end,
    },
}
