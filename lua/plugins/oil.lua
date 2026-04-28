require("mini.icons").setup()

require("oil").setup({
	delete_to_trash = true,
	skip_confirm_for_simple_edits = true,
	default_file_explorer = true,
	view_options = {
		show_hidden = true,
	},
	confirmation = {
		border = "double",
	},
	columns = {
		"icon",
	},
	keymaps = {
		["g?"] = { "actions.show_help", mode = "n" },
		["q"] = { "actions.close", mode = "n" },
		["<CR>"] = "actions.select",
		["L"] = "actions.select",
		["H"] = "actions.parent",
		["<C-s>"] = { "actions.select", opts = { vertical = true } },
		["<C-h>"] = { "actions.select", opts = { horizontal = true } },
		["<C-t>"] = { "actions.select", opts = { tab = true } },
		["<C-p>"] = "actions.preview",
		["<C-l>"] = "actions.refresh",
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["<C-i>"] = { "actions.cd", mode = "n" },
		["gs"] = { "actions.change_sort", mode = "n" },
		["gx"] = "actions.open_external",
		["g."] = { "actions.toggle_hidden", mode = "n" },
		["g\\"] = { "actions.toggle_trash", mode = "n" },
	},
})
