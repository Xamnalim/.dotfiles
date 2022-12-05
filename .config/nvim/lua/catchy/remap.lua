local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap

nnoremap("<leader>e", "<cmd>Ex<CR>")
nnoremap("<C-d>", "<C-d>zz")
nnoremap("<C-u>", "<C-u>zz")

nnoremap("<leader>y", "\"+y")
vnoremap("<leader>y", "\"+y")

nnoremap("<leader>d", "\"_d")
vnoremap("<leader>d", "\"_d")

xnoremap("<leader>p", "\"_dP") -- paste without register swap

nnoremap("<C-f>", "<cmd>Neoformat<CR>")
