local builtin = require("telescope.builtin")
local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>ff", builtin.find_files)
nnoremap("<leader>fg", builtin.live_grep)
nnoremap("<leader>fb", builtin.buffers)
nnoremap("<leader>fh", builtin.help_tags)
