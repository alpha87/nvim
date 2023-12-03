return {
    {
        "nvimdev/dashboard-nvim",
        event = "VimEnter",
        config = function()
            require("dashboard").setup({
                theme = "Hyper",
                config = {
                    header = {
                        [[]],
                        [[]],
                        [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
                        [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
                        [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
                        [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
                        [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
                        [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
                        [[]],
                        [[]],
                    },
                    week_header = {
                        enable = true,
                    },
                    shortcut = {
                        {
                            desc = "󰈞 Files",
                            group = "Number",
                            action = "Telescope find_files",
                            key = "f",
                        },
                        {
                            desc = "󰚰 Update",
                            group = "DiagnosticHint",
                            action = "Lazy update",
                            key = "u",
                        },
                        {
                            desc = "󰩈 Exit",
                            group = "Label",
                            action = "exit",
                            key = "q",
                        },
                    },
                    footer = {
                        "",
                        "- 相逢的人会再相逢 -",
                    },
                },
            })
        end,
        dependencies = { { "nvim-tree/nvim-web-devicons" } },
    },
}
