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
            wk.add({
                -- <leader>n 常用快捷键
                { "<leader>n", group = "Normal 快捷键" },
                { "<leader>nh", "<cmd>nohlsearch<cr>", desc = "nohlsearch 清除搜索高亮", mode = "n" },
                -- vim wiki 插件
                { "<leader>w", group = "Vimwiki 插件" },
                { "<leader>ww", "<cmd>VimwikiIndex<cr>", desc = "打开 vim wiki" },
                { "<leader>wt", "<cmd>VimwikiTabIndex<cr>", desc = "新 Tab 打开 vim wiki" },
                { "<leader>ws", "<cmd>VimwikiUISelect<cr>", desc = "选择 wiki 文件" },
                -- <leader>g 跳转定义
                { "<leader>g", group = "Goto 跳转" },
                {
                    "<leader>gj",
                    "<cmd>Lspsaga diagnostic_jump_next<cr>",
                    desc = "Lspsaga diagnostic_jump_next 跳转到下一个错误",
                },
                { "<leader>gg", "<cmd>Lspsaga goto_definition<cr>", desc = "Lspsaga goto_definition 跳转" },
                { "<leader>gf", "<cmd>Lspsaga finder<cr>", desc = "Lspsaga finder 查看引用位置" },
                { "<leader>gh", "<cmd>Lspsaga hover_doc<cr>", desc = "Lspsaga hover_doc 查看文档" },
                { "<leader>go", "<cmd>SymbolsOutline<cr>", desc = "SymbolsOutline 打开/关闭 代码跳转" },
                { "<leader>gr", "<cmd>Lspsaga rename<cr>", desc = "Lspsaga rename 重命名" },
                { "<leader>gt", "<cmd>Lspsaga term_toggle<cr>", desc = "Lspsaga term_toggle 打开/关闭 终端" },
                -- <leader>f 查找
                { "<leader>f", group = "Find 查找" },
                { "<leader>fw", "<cmd>HopWord<cr>", desc = "HopWord 快速定位" },
                { "<leader>ft", "<cmd>NvimTreeToggle<cr>", desc = "NvimTreeToggle 打开/关闭 文件树" },
                { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope 查找文件" },
                { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope 查找内容" },
                { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope 查找缓冲区" },
                { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope 查找帮助" },
                -- <leader>b bufferline 操作
                { "<leader>b", group = "Bufferline 操作" },
                {
                    "<leader>bp",
                    "<cmd>BufferLineCyclePrev<cr>",
                    desc = "BufferLineCyclePrev 跳转到上一个缓冲区",
                },
                {
                    "<leader>bn",
                    "<cmd>BufferLineCycleNext<cr>",
                    desc = "BufferLineCycleNext 跳转到下一个缓冲区",
                },
                { "<leader>bc", "<cmd>BufferLinePickClose<cr>", desc = "BufferLinePickClose 关闭当前缓冲区" },
                {
                    "<leader>bo",
                    "<cmd>BufferLineCloseOthers<cr>",
                    desc = "BufferLineCloseOthers 关闭其他缓冲区",
                },
                { "<leader>bg", "<cmd>BufferLinePick<cr>", desc = "BufferLinePick 选择缓冲区" },
                -- <leader>d dap 代码调试
                { "<leader>d", group = "DAP 代码调试" },
                { "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", desc = "Toggle Breakpoint" },
                { "<leader>dc", "<cmd>lua require'dap'.continue()<cr>", desc = "Continue" },
                { "<leader>di", "<cmd>lua require'dap'.step_into()<cr>", desc = "Step Into" },
                { "<leader>do", "<cmd>lua require'dap'.step_over()<cr>", desc = "Step Over" },
                { "<leader>dO", "<cmd>lua require'dap'.step_out()<cr>", desc = "Step Out" },
                { "<leader>dt", "<cmd>lua require'dap'.repl.toggle()<cr>", desc = "Toggle Repl" },
                { "<leader>dr", "<cmd>lua require'dap'.run_last()<cr>", desc = "Run" },
                { "<leader>du", "<cmd>lua require'dapui'.toggle()<cr>", desc = "Dap UI" },
                { "<leader>dx", "<cmd>lua require'dap'.terminate()<cr>", desc = "Terminate" },
            })
        end,
    },
}
