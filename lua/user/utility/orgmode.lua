require("orgmode").setup_ts_grammar()

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = { "org" },
	},
	ensure_installed = { "org" },
})

require("orgmode").setup({
	org_agenda_files = "~/OneDrive/Documents/Studies/org-mode/agenda/*",
	org_default_notes_file = "~/OneDrive/Documents/Studies/org-mode/notes/*",
})

vim.cmd([[highlight Headline1 guibg=#1e2718]])
vim.cmd([[highlight Headline2 guibg=#21262d]])
vim.cmd([[highlight CodeBlock guibg=#1c1c1c]])
vim.cmd([[highlight Dash guibg=#D19A66 gui=bold]])

--[[ collapsed headers get hidden /shrug
require("headlines").setup({
	org = {
		headline_highlights = { "Headline1", "Headline2" },
	},
})
]]

require("org-bullets").setup({
	concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
	symbols = {
		-- headlines can be a list
		headlines = { "◉", "○", "✸", "✿" },
		checkboxes = {
			half = { "", "OrgTSCheckboxHalfChecked" },
			done = { "✓", "OrgDone" },
			todo = { "˟", "OrgTODO" },
		},
	},
})
