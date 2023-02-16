local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>gs", vim.cmd.Git)
