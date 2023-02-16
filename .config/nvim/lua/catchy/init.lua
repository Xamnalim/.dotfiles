require("catchy.set")
require("catchy.remap")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local catchyGrp = augroup("Catchy", {})
local yankGrp = augroup("HighlightYank", {})

-- highlights rext on yank
autocmd("TextYankPost", {
	group = yankGrp,
	command = "silent! lua vim.highlight.on_yank()",
})
