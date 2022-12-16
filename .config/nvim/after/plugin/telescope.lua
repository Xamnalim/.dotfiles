local builtin = require("telescope.builtin")
local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap

-- file pickers
nnoremap("<leader>ff", builtin.find_files)
nnoremap("<leader>fg", builtin.live_grep)
nnoremap("<leader>fh", builtin.help_tags)

-- vim pickers
nnoremap("<leader>fb", builtin.buffers)

-- LSP pickers
nnoremap("<leader>frr", builtin.lsp_references) -- references for word under cursor
nnoremap("<leader>fds", builtin.lsp_document_symbols) -- symbols in current buffer
nnoremap("<leader>fvd", builtin.diagnostics) -- list diagnostics for all open buffers
nnoremap("<leader>fgi", builtin.lsp_implementations) -- goto imp of word under cursor
nnoremap("<leader>fgd", builtin.lsp_definitions) -- goto def of word under cursor

-- git pickers
nnoremap("<leader>glo", builtin.git_commits) -- list git commits
nnoremap("<leader>gblo", builtin.git_bcommits) -- list git commits for current buffer
nnoremap("<leader>gbr", builtin.git_branches) -- list git branches
nnoremap("<leader>gst", builtin.git_status) -- list changes

