-- Useful plugin to show you pending keybinds.
return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        spec = {
            { "<leader>c", group = "[C]ode" },
            { "<leader>f", group = "[F]ind" },
            { "<leader>fs", group = "[S]ymbols" },
            { "<leader>r", group = "[R]ename" },
            { "<leader>v", group = "[V]iew" },
            { "<leader>g", group = "[G]oto" },
            { "<leader>D", group = "[D]atabase" },
        },
    }
}
