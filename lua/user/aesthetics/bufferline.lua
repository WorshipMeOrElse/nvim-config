require("bufferline").setup({
	options = {
		mode = "buffers",
		numbers = "none",
		separator_style = "slant",
		close_command = "Bdelete! %d",

		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				text_align = "left",
				separator = true,
			},
		},
	},
})
