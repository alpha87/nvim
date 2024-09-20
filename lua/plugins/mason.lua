return {
    {
        "williamboman/mason.nvim",
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
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.jsonls.setup({})
            lspconfig.ts_ls.setup({})
            lspconfig.jedi_language_server.setup({})
            lspconfig.pylsp.setup({})
            lspconfig.yamlls.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.taplo.setup({})
            lspconfig.pyright.setup({})
        end,
    },
}
