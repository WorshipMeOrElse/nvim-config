require("mason").setup()

require("mason-null-ls").setup({
	ensure_installed = {
		"stylua",
		"selene",
		"prettier",
		"eslint",
	},
})

require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.diagnostics.selene.with({
			extra_args = { "--config", vim.fn.expand("~/AppData/Local/nvim-data/roblox/null-ls/selene.toml") },
		}),

		require("null-ls").builtins.formatting.prettier,
		require("null-ls").builtins.diagnostics.eslint,
	},

	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
					vim.lsp.buf.format()
				end,
			})
		end
	end,
})

vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()']])

require("mason-lspconfig").setup({
	ensure_installed = { "tsserver", "jsonls" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require("lspconfig").sumneko_lua.setup({
	capabilities = capabilities,
})

require("lspconfig").tsserver.setup({
	on_attach = function(client, _)
		client.server_capabilities.document_formatting = false
	end,
	capabilities = capabilities,
})

require("lspconfig").jsonls.setup({
	capabilities = capabilities,
})
