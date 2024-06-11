return {
    { "nvim-neotest/nvim-nio" },
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap_breakpoint_color = {
                breakpoint = {
                    ctermbg = 0,
                    fg = "#993939",
                    bg = "#31353f",
                },
                logpoing = {
                    ctermbg = 0,
                    fg = "#61afef",
                    bg = "#31353f",
                },
                stopped = {
                    ctermbg = 0,
                    fg = "#98c379",
                    bg = "#31353f",
                },
            }

            vim.api.nvim_set_hl(0, "DapBreakpoint", dap_breakpoint_color.breakpoint)
            vim.api.nvim_set_hl(0, "DapLogPoint", dap_breakpoint_color.logpoing)
            vim.api.nvim_set_hl(0, "DapStopped", dap_breakpoint_color.stopped)

            local dap_breakpoint = {
                error = {
                    text = "",
                    texthl = "DapBreakpoint",
                    linehl = "DapBreakpoint",
                    numhl = "DapBreakpoint",
                },
                condition = {
                    text = "",
                    texthl = "DapBreakpoint",
                    linehl = "DapBreakpoint",
                    numhl = "DapBreakpoint",
                },
                rejected = {
                    text = "✘",
                    texthl = "DapBreakpint",
                    linehl = "DapBreakpoint",
                    numhl = "DapBreakpoint",
                },
                logpoint = {
                    text = "",
                    texthl = "DapLogPoint",
                    linehl = "DapLogPoint",
                    numhl = "DapLogPoint",
                },
                stopped = {
                    text = "",
                    texthl = "DapStopped",
                    linehl = "DapStopped",
                    numhl = "DapStopped",
                },
            }

            vim.fn.sign_define("DapBreakpoint", dap_breakpoint.error)
            vim.fn.sign_define("DapBreakpointCondition", dap_breakpoint.condition)
            vim.fn.sign_define("DapBreakpointRejected", dap_breakpoint.rejected)
            vim.fn.sign_define("DapLogPoint", dap_breakpoint.logpoint)
            vim.fn.sign_define("DapStopped", dap_breakpoint.stopped)

            local dap = require("dap")
            dap.adapters.python = {
                type = "executable",
                command = "/usr/local/bin/python3",
                args = { "-m", "debugpy.adapter" },
            }
            dap.configurations.python = {
                {
                    type = "python",
                    request = "launch",
                    name = "launch file",
                    program = "${file}",
                    pythonPath = function()
                        return "/usr/local/bin/python3"
                    end,
                },
            }
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "mfussenegger/nvim-dap" },
        config = function()
            require("dapui").setup({
                {
                    icons = { expanded = "", collapsed = "", current_frame = "" },
                    layouts = {
                        {
                            elements = {
                                -- Elements can be strings or table with id and size keys.
                                { id = "scopes", size = 0.25 },
                                "breakpoints",
                                "stacks",
                                "watches",
                            },
                            size = 40, -- 40 columns
                            position = "left",
                        },
                        {
                            elements = {
                                "repl",
                                "console",
                            },
                            size = 0.25, -- 25% of total lines
                            position = "bottom",
                        },
                    },
                    controls = {
                        -- Requires Neovim nightly (or 0.8 when released)
                        enabled = true,
                        -- Display controls in this element
                        element = "repl",
                        icons = {
                            pause = "",
                            play = "",
                            step_into = "",
                            step_over = "",
                            step_out = "",
                            step_back = "",
                            run_last = "",
                            terminate = "",
                        },
                    },
                    floating = {
                        max_height = nil, -- These can be integers or a float between 0 and 1.
                        max_width = nil, -- Floats will be treated as percentage of your screen.
                        border = "single", -- Border style. Can be "single", "double" or "rounded"
                        mappings = {
                            close = { "q", "<Esc>" },
                        },
                    },
                    windows = { indent = 1 },
                    render = {
                        max_type_length = nil, -- Can be integer or nil.
                        max_value_lines = 100, -- Can be integer or nil.
                    },
                },
            })
        end,
    },
    {
        "theHamsta/nvim-dap-virtual-text",
        config = function()
            require("nvim-dap-virtual-text").setup({
                enabled = true,
                enable_commands = true,
                highlight_changed_variables = true,
                highlight_new_as_changed = false,
                show_stop_reason = true,
                commented = false,
                only_first_definition = true,
                all_references = false,
                filter_references_pattern = "<module",
                virt_text_pos = "eol",
                all_frames = false,
                virt_lines = false,
                virt_text_win_col = nil,
            })
        end,
    },
}
