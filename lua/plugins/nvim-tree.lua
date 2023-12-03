--[[
Basic commands:

:NvimTreeToggle Open or close the tree. Takes an optional path argument.

:NvimTreeFocus Open the tree if it is closed, and then focus on the tree.

:NvimTreeFindFile Move the cursor in the tree for the current buffer, opening folders if needed.

:NvimTreeCollapse Collapses the nvim-tree recursively.
--]]

return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            vim.g.loaded_netrw = 1
            vim.g.loaded_netrwPlugin = 1
            vim.opt.termguicolors = true
            require("nvim-tree").setup({
                sort_by = "case_sensitive",
                view = {
                    width = 26,
                },
                renderer = {
                    group_empty = true,
                },
                filters = {
                    dotfiles = true,
                },
                renderer = {
                    root_folder_label = false,
                    highlight_git = false,
                    highlight_opened_files = "none",
                    indent_markers = {
                        enable = false,
                    },
                    icons = {
                        show = {
                            file = true,
                            folder = true,
                            folder_arrow = true,
                            git = false,
                        },
                        glyphs = {
                            default = "󰈚",
                            symlink = "",
                            folder = {
                                default = "",
                                empty = "",
                                empty_open = "",
                                open = "",
                                symlink = "",
                                symlink_open = "",
                                arrow_open = "",
                                arrow_closed = "",
                            },
                            git = {
                                unstaged = "✗",
                                staged = "✓",
                                unmerged = "",
                                renamed = "➜",
                                untracked = "★",
                                deleted = "",
                                ignored = "◌",
                            },
                        },
                    },
                },
            })
        end,
    },
}
