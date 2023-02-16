local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>u", vim.cmd.UndotreeToggle)
