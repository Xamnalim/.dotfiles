-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim") -- packer package manager
	use("arcticicestudio/nord-vim") -- nord theme
	use("sbdchd/neoformat") -- format files based on type
	use("neovim/nvim-lspconfig") -- configurations for Nvim LSP
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-buffer") -- Autocompletion for buffer
	use("hrsh7th/cmp-path") -- Autocompletion for path
	use("hrsh7th/cmp-cmdline") -- Autocompletion for commandline
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-nvim-lsp-signature-help") -- LSP source for nvim-cmp
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin
	use("lambdalisue/suda.vim") -- Saving files as su
	use({ "nvim-telescope/telescope.nvim", requires = { { "nvim-lua/plenary.nvim" } }, tag = "0.1.0" }) -- fuzzy finder
	use({ "nvim-lualine/lualine.nvim", requires = { { "kyazdani42/nvim-web-devicons", opt = true } } }) -- statusbar
end)
