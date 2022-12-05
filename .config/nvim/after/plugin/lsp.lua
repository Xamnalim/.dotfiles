local Remap = require("catchy.keymap")
local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local function config(_config)
	local capabilities = require("cmp_nvim_lsp").default_capabilities()

	return vim.tbl_deep_extend("force", {
		on_attach = function()
			nnoremap("<leader>vd", vim.diagnostic.open_float)
			nnoremap("]d", vim.diagnostic.goto_prev)
			nnoremap("[d", vim.diagnostic.goto_next)
			nnoremap("gd", vim.lsp.buf.definition)
			nnoremap("gi", vim.lsp.buf.implementation)
			nnoremap("K", vim.lsp.buf.hover)
			nnoremap("<leader>vws", vim.lsp.buf.workspace_symbol)
			nnoremap("<leader>vrr", vim.lsp.buf.references)
			nnoremap("<leader>vrn", vim.lsp.buf.rename)
			nnoremap("<C-h>", vim.lsp.buf.signature_help)
		end,
		capabilities = capabilities,
	}, _config or {})
end

local lspconfig = require("lspconfig")

lspconfig.gopls.setup(config())
lspconfig.pyright.setup(config())

-- luasnip setup
local luasnip = require("luasnip")

-- nvim-cmp setup
local cmp = require("cmp")
cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},
	mapping = cmp.mapping.preset.insert({
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Replace,
			select = true,
		}),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { "i", "s" }),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer" },
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
