-- Useful plugin to show you pending keybinds.
return {
    "folke/which-key.nvim",
    event = "VimEnter", -- Sets the loading event to 'VimEnter'
    config = function() -- This is the function that runs, AFTER loading
        require("which-key").setup()

        -- Document existing key chains
        require("which-key").register({
            ["<leader>c"] = { name = "[C]ode", _ = "which_key_ignore" },
            ["<leader>r"] = { name = "[R]ename", _ = "which_key_ignore" },
            ["<leader>f"] = {
                name = "[F]ind",
                _ = "which_key_ignore",
                s = "[S]ymbols",
            },
            ["<leader>v"] = { name = "[V]iew", _ = "which_key_ignore" },
        })
    end,
}
