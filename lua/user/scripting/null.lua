local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
	sources = {
		require("null-ls").builtins.formatting.stylua,
		require("null-ls").builtins.diagnostics.selene.with({
			extra_args = {
				"--config",
				"C:/Users/user/AppData/Local/nvim-data/roblox/null-ls/selene.toml",
			},
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
