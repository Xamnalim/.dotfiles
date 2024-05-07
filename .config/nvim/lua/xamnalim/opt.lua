-- set <space> as the leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local tabwidth = 4
vim.opt.tabstop = tabwidth -- how long should the tab be
vim.opt.softtabstop = tabwidth -- num of spaces to insert after <Tab>
vim.opt.shiftwidth = tabwidth -- num of tabs per indent
vim.opt.expandtab = true -- <Tab> inserts spaces
vim.opt.autoindent = true -- indent on new line
vim.opt.smartindent = true

-- is nerd font installed
vim.g.have_nerd_font = true

-- don't show vim mode
vim.opt.showmode = false
--
-- special column at the beginning of each line
vim.opt.signcolumn = "yes"

-- line length indicators
vim.opt.colorcolumn = "80,120"

-- show relative distance from current line
vim.opt.relativenumber = true
vim.opt.nu = true

-- show which line cursor is on
vim.opt.cursorline = true

-- sets how neovim will display certain whitespace in the editor
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- minimal number of screen lines to keep above and below the cursor
vim.opt.scrolloff = 10

-- no line wrap
vim.opt.wrap = false

-- customn window title
vim.opt.title = true

-- sync clipboard between OS and neovim
-- vim.opt.clipboard = 'unnamedplus'

-- save undo history
vim.opt.undofile = true

-- case-insensitive searching UNLESS \C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- preview substitutions live
vim.opt.inccommand = "split"

-- set highlight on search
vim.opt.hlsearch = true

-- decrease update time
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300
