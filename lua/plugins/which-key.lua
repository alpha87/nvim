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
                -- <leader>g 跳转定义
                { "<leader>g", group = "Goto 跳转" },
                { "<leader>gd", "<cmd>Lspsaga peek_definition<cr>", desc = "Lspsaga peek_definition 查看定义" },
                { "<leader>gf", "<cmd>Lspsaga lsp_finder<cr>", desc = "Lspsaga lsp_finder 查看引用位置" },
                { "<leader>gh", "<cmd>Lspsaga hover_doc<cr>", desc = "Lspsaga hover_doc 查看文档" },
                { "<leader>go", "<cmd>Lspsaga outline<cr>", desc = "Lspsaga outline 查看大纲" },
                { "<leader>gr", "<cmd>Lspsaga rename<cr>", desc = "Lspsaga rename 重命名" },
                -- <leader>f 查找
                { "<leader>f", group = "Find 查找" },
                { "<leader>fw", "<cmd>HopWord<cr>", desc = "HopWord 快速定位" },
                { "<leader>ft", "<cmd>NvimTreeToggle<cr>", desc = "NvimTreeToggle 打开/关闭 文件树" },
                { "<leader>fs", "<cmd>SymbolsOutline<cr>", desc = "SymbolsOutline 打开/关闭 代码跳转" },
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
