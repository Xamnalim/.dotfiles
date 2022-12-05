local tabwidth = 4
vim.opt.tabstop = tabwidth      -- how long should the tab be
vim.opt.softtabstop = tabwidth  -- num of spaces to insert after <Tab>
vim.opt.shiftwidth = tabwidth   -- num of tabs per indent
vim.opt.expandtab = true        -- <Tab> inserts spaces
vim.opt.autoindent = true       -- indent on new line

vim.opt.relativenumber = true   -- relative distance from curr line
vim.opt.nu = true               -- curr line has its number, not 0
vim.opt.hlsearch = false        -- don't highlight search results after done searching
vim.opt.hidden = true           -- keep buffers after exit?
vim.opt.wrap = false            -- don't wrap lines
vim.opt.incsearch = true        -- highlight search results while typing
vim.opt.scrolloff = 8           -- distance to keep while scrolling
vim.opt.signcolumn = "yes"      -- special column at the beginning of each line
vim.opt.colorcolumn = "88"      -- color column indicating length of the line

vim.g.mapleader = " "           -- leader key for custom shortcuts

