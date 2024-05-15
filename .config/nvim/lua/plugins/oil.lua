return {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("oil").setup({
            columns = { "icon" },
            keymaps = {
                ["<C-h>"] = false,
                ["<C-l>"] = false,
                ["<C-t>"] = false,
            },
            view_options = {
                show_hidden = true,
            },
        })
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory"})
    end,
}
