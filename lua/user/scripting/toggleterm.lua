require("toggleterm").setup({
  open_mapping = [[<c-t>]],

  size = 5,
  direcction = "horizontal",

	hide_numbers = true,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	close_on_exit = true,
	shell = vim.o.shell,
})
