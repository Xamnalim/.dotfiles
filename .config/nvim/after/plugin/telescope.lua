local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap
local builtin = require("telescope.builtin")

-- file pickers
nnoremap("<leader>ff", builtin.find_files) -- Find Files
nnoremap("<leader>fg", builtin.live_grep) -- Find using live Grep
nnoremap("<leader>fh", builtin.help_tags) -- Find Help tags

-- vim pickers
nnoremap("<leader>fb", builtin.buffers) -- Find Buffers

-- git pickers
nnoremap("<leader>glo", builtin.git_commits) -- Git List cOmmits
nnoremap("<leader>glbo", builtin.git_bcommits) -- Git List Buffer cOmmits
nnoremap("<leader>gbr", builtin.git_branches) -- Git List Branches
