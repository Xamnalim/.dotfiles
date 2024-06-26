-- Highlight, edit, and navigate code
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

        ---@diagnostic disable-next-line: missing-fields
        require("nvim-treesitter.configs").setup({
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
                disable = function (_, bufnr)
                    return vim.api.nvim_buf_line_count(bufnr) > 10000
                end
            },
            indent = { enable = true },
        })

        -- There are additional nvim-treesitter modules that you can use to interact
        -- with nvim-treesitter. You should go explore a few and see what interests you:
        --
        --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
        --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
        --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    end,
}
