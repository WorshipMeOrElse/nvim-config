local colors = {
	black = "#373b3e",
	gray = "#bec8d1",
	sky = "#86cecb",
	river = "#137a7f",
	pink = "#e12885",
	tan = "#e2ddcc",
}

local theme = {
	normal = {
		a = { fg = colors.black, bg = colors.tan },
		b = { fg = colors.black, bg = colors.gray },
		c = { fg = colors.black, bg = colors.black },
		y = { fg = colors.gray, bg = colors.river },
		z = { fg = colors.black, bg = colors.sky },
	},
	insert = { a = { fg = colors.black, bg = colors.sky } },
	visual = { a = { fg = colors.gray, bg = colors.river } },
	replace = { a = { fg = colors.gray, bg = colors.pink } },
}

local function time()
	return os.date("%I:%M%p")
end

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = theme,
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = " " },
		disabled_filetypes = {
			statusline = {},
			winbar = {},
		},
		ignore_focus = {},
		always_divide_middle = true,
		globalstatus = false,
		refresh = {
			statusline = 1000,
			tabline = 1000,
			winbar = 1000,
		},
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "diagnostics", "branch" },
		lualine_c = {},
		lualine_x = {},
		lualine_y = { "diff", "filetype" },
		lualine_z = { time },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	winbar = {},
	inactive_winbar = {},
	extensions = {},
})
