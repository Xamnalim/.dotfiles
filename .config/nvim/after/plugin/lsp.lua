local Remap = require("catchy.keymap")

local lsp = require("lsp-zero")
lsp.preset("recommended")
lsp.ensure_installed({
	"ansiblels",
	"bashls",
	"cssls",
	"dockerls",
	"docker_compose_language_service",
	"eslint",
	"gopls",
	"html",
	"jsonls",
	"lua_ls",
	"marksman",
	"intelephense",
	"pyright",
	"sqlls",
	"taplo",
	"yamlls",
})

lsp.configure("lua-language-server", {
	settings = {
		Lua = {
			diagnostics = {
				globals = { "vim" },
			},
		},
	},
})

local cmp = require("cmp")
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
	["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
	["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
	["<C-y>"] = cmp.mapping.confirm({ select = true }),
	["<C-Space"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
})

local telescope = require("telescope.builtin")
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
	vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
	vim.keymap.set("n", "d]", vim.diagnostic.goto_next, opts)
	vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
	vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
	vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)

	vim.keymap.set("n", "<leader>vrr", telescope.lsp_references, opts)
	vim.keymap.set("n", "<leader>vws", telescope.lsp_document_symbols, opts)
	vim.keymap.set("n", "<leader>vd", telescope.diagnostics, opts)
	vim.keymap.set("n", "<leader>gi", telescope.lsp_implementations, opts)
	vim.keymap.set("n", "<leader>gd", telescope.lsp_definitions, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})
