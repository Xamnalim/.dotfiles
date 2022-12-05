require("catchy.set")
require("catchy.remap")

local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local catchyGrp = augroup('Catchy', {})
local yankGrp = augroup('HighlightYank', {})
local fmtGrp = augroup('Format', {})

-- highlights rext on yank
autocmd("TextYankPost", {
    group = yankGrp,
    command = "silent! lua vim.highlight.on_yank()",
})

-- format file on write
autocmd("BufWritePre", {
    group = fmtGrp,
    command = "try | undojoin | Neoformat | catch /^Vim\\%((\\a\\+)\\)\\=:E790/ | finally | silent Neoformat | endtry",
})

