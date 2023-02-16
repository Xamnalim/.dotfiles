local builtin = require("telescope.builtin")
local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap

-- file pickers
nnoremap("<leader>ff", builtin.find_files) -- Find Files
nnoremap("<leader>fg", builtin.live_grep) -- Find using live Grep
nnoremap("<leader>fh", builtin.help_tags) -- Find Help tags

-- vim pickers
nnoremap("<leader>fb", builtin.buffers) -- Find Buffers

-- LSP pickers
nnoremap("<leader>vrr", builtin.lsp_references) -- View References
nnoremap("<leader>vws", builtin.lsp_document_symbols) -- View Document Symbols
nnoremap("<leader>vd", builtin.diagnostics) -- View Diagnostics
nnoremap("<leader>gi", builtin.lsp_implementations) -- Goto Implementation/s
nnoremap("<leader>gd", builtin.lsp_definitions) -- Goto Definition/s

-- git pickers
nnoremap("<leader>glo", builtin.git_commits) -- Git List cOmmits
nnoremap("<leader>glbo", builtin.git_bcommits) -- Git List Buffer cOmmits
nnoremap("<leader>gbr", builtin.git_branches) -- Git List Branches
