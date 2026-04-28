local custom = {
	normal = {
		a = { bg = "none", fg = "#e2cca9", gui = "none" }, -- Leftmost section
		b = { bg = "none", fg = "#dddddd" }, -- Middle-left section
		c = { bg = "none", fg = "#dddddd" }, -- Middle/Background section
	},
	insert = {
		a = { bg = "none", fg = "#a9b665", gui = "none" },
	},
	visual = {
		a = { bg = "none", fg = "#7daea3", gui = "none" },
	},
	replace = {
		a = { bg = "none", fg = "#e2cca9", gui = "none" },
	},
	inactive = {
		a = { bg = "#282828", fg = "#777777" },
		b = { bg = "#282828", fg = "#777777" },
		c = { bg = "#282828", fg = "#777777" },
	},
}
require("lualine").setup({
	options = {
		theme = custom,
		icons_enabled = false,
		component_separators = "",
		section_separators = "",
		globalstatus = true,
		disabled_filetypes = {
			statusline = { "fzf", "oil", "lazygit" },
			winbar = { "fzf", "oil", "lazygit" },
		},
	},

	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch" },
		lualine_c = { { "filename", path = 1 } },
		lualine_x = {
			function()
				local encoding = vim.o.fileencoding
				if encoding == "" then
					return vim.bo.fileformat .. " :: " .. vim.bo.filetype
				else
					return encoding .. " :: " .. vim.bo.fileformat .. " :: " .. vim.bo.filetype
				end
			end,
		},
		lualine_y = { "" },
		lualine_z = { "location" },
	},
})
