return {
    "kristijanhusak/vim-dadbod-ui",
    dependencies = {
        { "tpope/vim-dadbod", lazy = true },
        {
            "kristijanhusak/vim-dadbod-completion",
            ft = { "sql", "mysql", "plsql" },
            lazy = true,
        },
    },
    cmd = {
        "DBUI",
        "DBUIToggle",
        "DBUIAddConnection",
        "DBUIFindBuffer",
    },
    ft = { "sql", "mysql", "plsql" },
    keys = {
        { "<leader>DD", "<cmd>DBUIToggle<CR>", desc = "Toggle DBUI" },
        { "<leader>Da", "<cmd>DBUIFindBuffer<CR>", desc = "Attach buffer to DB conn" },
    },
    init = function()
        vim.g.db_ui_use_nerd_fonts = true
        vim.g.db_ui_show_database_icon = true
        vim.g.db_ui_execute_on_save = false
        vim.g.db_ui_win_position = "right"
    end,
}
