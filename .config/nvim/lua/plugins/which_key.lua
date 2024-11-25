-- Useful plugin to show you pending keybinds.
return {
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
        require("which-key").setup()

        -- Document existing key chains
        require("which-key").add({
            { "<leader>c", group = "[C]ode" },
            { "<leader>f", group = "[F]ind" },
            { "<leader>fs", group = "[S]ymbols" },
            { "<leader>r", group = "[R]ename" },
            { "<leader>v", group = "[V]iew" },
            { "<leader>g", group = "[G]oto" },
        })
    end,
}
