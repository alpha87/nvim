--[[
Go to any word in the current buffer (:HopWord).
Go to any character in the current buffer (:HopChar1).
Go to any bigrams in the current buffer (:HopChar2).
Make an arbitrary search akin to / and go to any occurrences (:HopPattern).
Go to any line and any line start (:HopLine, :HopLineStart).
Go to anywhere (:HopAnywhere).
Use Hop cross windows with multi-windows support (:Hop*MW).
--]]

return {
    {
        "phaazon/hop.nvim",
        branch = "v2", -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
        end,
    },
}
