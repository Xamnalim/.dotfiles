-- Fuzzy Finder (files, lsp, etc)
return {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        { -- If encountering errors, see telescope-fzf-native README for install instructions
            "nvim-telescope/telescope-fzf-native.nvim",

            -- `build` is used to run some command when the plugin is installed/updated.
            -- This is only run then, not every time Neovim starts up.
            build = "make",

            -- `cond` is a condition used to determine whether this plugin should be
            -- installed and loaded.
            cond = function()
                return vim.fn.executable("make") == 1
            end,
        },
        { "nvim-telescope/telescope-ui-select.nvim" },

        -- Useful for getting pretty icons, but requires a Nerd Font.
        { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
        { "jemag/telescope-diff.nvim" },
    },
    keys = function()
        -- See `:help telescope.builtin`
        local telescope = require("telescope")
        local builtin = require("telescope.builtin")
        return {
            { "<leader>fh", builtin.help_tags, desc = "[F]ind [H]elp" },
            { "<leader>fk", builtin.keymaps, desc = "[F]ind [K]eymaps" },
            { "<leader>ff", builtin.find_files, desc = "[F]ind [F]iles" },
            {
                "<leader>fw",
                builtin.grep_string,
                desc = "[F]ind current [W]ord",
            },
            { "<leader>fg", builtin.live_grep, desc = "[F]ind by [G]rep" },
            {
                "<leader>fd",
                builtin.diagnostics,
                desc = "[F]ind [D]iagnostics",
            },
            { "<leader>fr", builtin.resume, desc = "[F]ind [R]esume" },
            {
                "<leader>f.",
                builtin.oldfiles,
                desc = '[F]ind Recent Files ("." for repeat)',
            },
            {
                "<leader>fb",
                builtin.buffers,
                desc = "[F]ind existing [B]uffers",
            },
            {
                "<leader>/",
                function()
                    -- Slightly advanced example of overriding default behavior and theme
                    -- You can pass additional configuration to telescope to change theme, layout, etc.
                    builtin.current_buffer_fuzzy_find(
                        require("telescope.themes").get_dropdown({
                            winblend = 10,
                            previewer = false,
                        })
                    )
                end,
                desc = "[/] Fuzzily search in current buffer",
            },
            {
                "<leader>f/",
                function()
                    -- Also possible to pass additional configuration options.
                    --  See `:help telescope.builtin.live_grep()` for information about particular keys
                    builtin.live_grep({
                        grep_open_files = true,
                        prompt_title = "Live Grep in Open Files",
                    })
                end,
                desc = "[F]ind [/] in Open Files",
            },
            {
                "<leader>fn",
                function()
                    -- Shortcut for searching your neovim configuration files
                    builtin.find_files({ cwd = vim.fn.stdpath("config") })
                end,
                desc = "[F]ind [N]eovim files",
            },
            {
                "<leader>fc",
                function()
                    -- Shortcuts for telescope-diff
                    telescope.extensions.diff.diff_current({
                        hidden = true,
                    })
                end,
                desc = "[F]ind [C]ompare current file with...",
            },
            {
                "<leader>fC",
                function()
                    telescope.extensions.diff.diff_files({
                        hidden = true,
                    })
                end,
                desc = "[F]ind [C]ompare files",
            },
        }
    end,
    config = function()
        -- Telescope is a fuzzy finder that comes with a lot of different things that
        -- it can fuzzy find! It's more than just a "file finder", it can search
        -- many different aspects of Neovim, your workspace, LSP, and more!
        --
        -- The easiest way to use telescope, is to start by doing something like:
        --  :Telescope help_tags
        --
        -- After running this command, a window will open up and you're able to
        -- type in the prompt window. You'll see a list of help_tags options and
        -- a corresponding preview of the help.
        --
        -- Two important keymaps to use while in telescope are:
        --  - Insert mode: <c-/>
        --  - Normal mode: ?
        --
        -- This opens a window that shows you all of the keymaps for the current
        -- telescope picker. This is really useful to discover what Telescope can
        -- do as well as how to actually do it!

        -- [[ Configure Telescope ]]
        -- See `:help telescope` and `:help telescope.setup()`
        require("telescope").setup({
            -- You can put your default mappings / updates / etc. in here
            --  All the info you're looking for is in `:help telescope.setup()`
            --
            -- defaults = {
            --   mappings = {
            --     i = { ['<c-enter>'] = 'to_fuzzy_refine' },
            --   },
            -- },
            -- pickers = {}
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown(),
                },
            },
        })

        -- Enable telescope extensions, if they are installed
        pcall(require("telescope").load_extension, "fzf")
        pcall(require("telescope").load_extension, "ui-select")
        pcall(require("telescope").load_extension, "diff")
    end,
}
