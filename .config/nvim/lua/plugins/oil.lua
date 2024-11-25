return {
    "stevearc/oil.nvim",
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
        columns = { "icon" },
        keymaps = {
            ["<C-h>"] = false,
            ["<C-l>"] = false,
            ["<C-t>"] = false,
        },
        view_options = {
            show_hidden = true,
        },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        {"-", "<CMD>Oil<CR>", desc = "Open parent directory"}
    }
}
