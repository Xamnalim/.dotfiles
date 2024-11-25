-- Highlight, edit, and navigate code
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "VeryLazy" },
    lazy = vim.fn.argc(-1) == 0, -- load treesitter early when opening a file from the cmdline
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    opts = {
        ensure_installed = {
            "bash",
            "diff",
            "dockerfile",
            "git_rebase",
            "gitattributes",
            "gitcommit",
            "gitignore",
            "go",
            "gomod",
            "gosum",
            "gowork",
            "ini",
            "javascript",
            "json",
            "lua",
            "markdown",
            "php",
            "phpdoc",
            "python",
            "regex",
            "sql",
            "toml",
            "twig",
            "vim",
            "vimdoc",
            "vue",
            "yaml",
        },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = {
            enable = true,
            -- disable for large buffers
            disable = function(_, bufnr)
                return vim.api.nvim_buf_line_count(bufnr) > 10000
            end,
        },
        indent = { enable = true },
    },
}
