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
            wk.setup({
                triggers_blacklist = {
                    i = { "j", "k", "<leader>", "<space>" },
                    v = { "j", "k" },
                },
            })
            local mappings = {
                -- <leader>n 常用快捷键
                ["<leader>n"] = { name = "Normal 快捷键" },
                ["<leader>nh"] = { "<cmd>nohlsearch<cr>", "nohlsearch 清除搜索高亮" },
                -- <leader>g 跳转定义
                ["<leader>g"] = { name = "Goto 跳转" },
                ["<leader>gd"] = { "<cmd>Lspsaga peek_definition<cr>", "Lspsaga peek_definition 查看定义" },
                ["<leader>gf"] = { "<cmd>Lspsaga lsp_finder<cr>", "Lspsaga lsp_finder 查看引用位置" },
                ["<leader>gh"] = { "<cmd>Lspsaga hover_doc<cr>", "Lspsaga hover_doc 查看文档" },
                ["<leader>go"] = { "<cmd>Lspsaga outline<cr>", "Lspsaga outline 查看大纲" },
                ["<leader>gr"] = { "<cmd>Lspsaga rename<cr>", "Lspsaga rename 重命名" },
                -- <leader>f 查找
                ["<leader>f"] = { name = "Find 查找" },
                ["<leader>fw"] = { "<cmd>HopWord<cr>", "HopWord 快速定位" },
                ["<leader>ft"] = { "<cmd>NvimTreeToggle<cr>", "NvimTreeToggle 打开/关闭 文件树" },
                ["<leader>fs"] = { "<cmd>SymbolsOutline<cr>", "SymbolsOutline 打开/关闭 代码跳转" },
                ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", "Telescope 查找文件" },
                ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", "Telescope 查找内容" },
                ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", "Telescope 查找缓冲区" },
                ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", "Telescope 查找帮助" },
                -- <leader>b bufferline 操作
                ["<leader>b"] = { name = "Bufferline 操作" },
                ["<leader>bp"] = { "<cmd>BufferLineCyclePrev<cr>", "BufferLineCyclePrev 跳转到上一个缓冲区" },
                ["<leader>bn"] = { "<cmd>BufferLineCycleNext<cr>", "BufferLineCycleNext 跳转到下一个缓冲区" },
                ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", "BufferLinePickClose 关闭当前缓冲区" },
                ["<leader>bo"] = { "<cmd>BufferLineCloseOthers<cr>", "BufferLineCloseOthers 关闭其他缓冲区" },
                ["<leader>bg"] = { "<cmd>BufferLinePick<cr>", "BufferLinePick 选择缓冲区" },
                -- <leader>d dap 代码调试
                ["<leader>d"] = { name = "DAP 代码调试" },
                ["<leader>db"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
                ["<leader>dc"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
                ["<leader>di"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
                ["<leader>do"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
                ["<leader>dO"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
                ["<leader>dr"] = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
                ["<leader>dl"] = { "<cmd>lua require'dap'.run_last()<cr>", "Run Last" },
                ["<leader>du"] = { "<cmd>lua require'dapui'.toggle()<cr>", "Dap UI" },
                ["<leader>dt"] = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
            }
            local opts = {}
            wk.register(mappings, opts)
        end,
    },
}
