--[[
} example of a section

  section = {
    -- "text" -> text that will be displayed
    -- "mapping" -> create mappings for commands that can be used
    -- use mappings.execute_command on the commands to execute
    -- "oldfiles" -> display oldfiles (can be opened with mappings.open_file/open_file_split)
    type = "text", -- can be mappings or oldfiles
    oldfiles_directory = false, -- if the oldfiles of the current directory should be displayed
    align = "center", -- "center", "left" or "right"
    fold_section = false, -- whether to fold or not
    title = "title", title for the folded section
    -- if < 0 fraction of screen width
    -- if > 0 numbers of column
    margin = 5, the margin for left or right alignment
    -- type of content depends on `type`
    -- "text" -> a table with string or a function that requires a function that returns a table of strings
    -- "mapping" -> a table with tables in the format:
    -- {
    --   {<displayed_command_name>, <command>, <mapping>}
    --   {<displayed_command_name>, <command>, <mapping>}
    -- }
    -- e.g. {" Find File", "Telescope find_files", "<leader>ff" }
    -- "oldfiles" -> ""
    content = <content>
    highlight = "String", -- highlight group in which the section text should be highlighted
    default_color = "#FF0000", -- a hex color that gets used if you don't specify `highlight`
    oldfiles_amount = 5, -- the amount of oldfiles to be displayed
}
--]]

require("startup").setup({
	header = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Header",
		margin = 5,
    --stylua: ignore
		content = {
      [[   .-')                              (`-.           _   .-')     ]],
      [[  ( OO ).                          _(OO  )_        ( '.( OO )_   ]],
      [[ (_)---\_)  ,--.   ,--.,--.    ,--(_/   ,. \ ,-.-') ,--.   ,--.) ]],
      [[ /    _ |    \  `.'  / |  |.-')\   \   /(__/ |  |OO)|   `.'   |  ]],
      [[ \  :` `.  .-')     /  |  | OO )\   \ /   /  |  |  \|         |  ]],
      [[  '..`''.)(OO  \   /   |  |`-' | \   '   /,  |  |(_/|  |'.'|  |  ]],
      [[ .-._)   \ |   /  /\_ (|  '---.'  \     /__),|  |_.'|  |   |  |  ]],
      [[ \       / `-./  /.__) |      |    \   /   (_|  |   |  |   |  |  ]],
      [[  `-----'    `--'      `------'     `-'      `--'   `--'   `--'  ]],
		},
		highlight = "Statement",
		default_color = "",
		oldfiles_amount = 0,
	},

	quote = {
		type = "text",
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "Header",
		margin = 5,
    --stylua: ignore
		content = function ()
		  local quotes = {
        "☆*: .｡. o(≧▽≦)o .｡.:*☆",
        "(￣y▽￣)╭ Ohohoho.....",
        "ヾ(•ω•`)o yo"
      }

      local quote = quotes[math.random(1, #quotes)]

      return {
        quote
      }
		end,
		highlight = "Statement",
		default_color = "",
		oldfiles_amount = 0,
	},

	clock = {
		type = "text",
		content = function()
			local clock = " " .. os.date("%I:%M")
			local date = " " .. os.date("%m/%d/%y")

			return {
				clock,
				date,
			}
		end,
		oldfiles_directory = false,
		align = "center",
		fold_section = false,
		title = "",
		margin = 5,
		highlight = "TSString",
		default_color = "",
		oldfiles_amount = 10,
	},

	basics = {
		type = "mapping",
		align = "center",
		fold_section = false,
		title = "Basic Commands",
		margin = 5,
		content = {
			{ " Find File", "Telescope find_files", "leader>f" },
			{ " Find Word", "Telescope live_grep", "<leader>w" },
			{ " Recent Files", "Telescope oldfiles", "<leader>r" },
			{ " File Browser", "Telescope file_browser", "<leader>b" },
			{ " New File", "lua require'startup'.new_file()", "<leader>n" },
		},
		highlight = "String",
		default_color = "",
		oldfiles_amount = 0,
	},

	options = {
		mapping_keys = true, -- display the keybinds
		cursor_column = 0.5, -- < 0 fraction of screen width > 0 numbers of column
		empty_lines_between_mappings = false, -- in the damn name
		disable_statuslines = true, -- disable status-, buffer- and tablines
		paddings = { 1, 0, 2, 2 }, -- amount of empty lines before each section (must be equal to amount of sections)
	},

	mappings = {
		execute_command = "<CR>",
		open_file = "o",
		open_file_split = "<c-o>",
		open_section = "<TAB>",
		open_help = "?",
	},

	parts = { "header", "quote", "clock", "basics" },
})
