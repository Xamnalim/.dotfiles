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
	["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings,
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
		{ name = "nvim_lsp_signature_help" },
	},
})

-- Use buffer source for `/` and `?`
cmp.setup.cmdline({ "/", "?" }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = "buffer" },
	},
})

-- Use cmdline & path source for ':'
cmp.setup.cmdline(":", {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = "path" },
	}, {
		{ name = "cmdline" },
	}),
})

local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap
local telescope = require("telescope.builtin")
lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	nnoremap("<leader>vd", vim.diagnostic.open_float, opts)
	nnoremap("[d", vim.diagnostic.goto_prev, opts)
	nnoremap("d]", vim.diagnostic.goto_next, opts)
	nnoremap("K", vim.lsp.buf.hover, opts)
	nnoremap("<leader>vca", vim.lsp.buf.code_action, opts)
	nnoremap("<leader>vrn", vim.lsp.buf.rename, opts)
	inoremap("<C-h>", vim.lsp.buf.signature_help, opts)

	nnoremap("<leader>vrr", telescope.lsp_references, opts)
	nnoremap("<leader>vws", telescope.lsp_document_symbols, opts)
	nnoremap("<leader>vd", telescope.diagnostics, opts)
	nnoremap("<leader>gi", telescope.lsp_implementations, opts)
	nnoremap("<leader>gd", telescope.lsp_definitions, opts)
end)

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
})
