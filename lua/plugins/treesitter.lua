local ensure_installed = {
	"lua",
	"vim",
	"vimdoc",
	"query",
	"go",
	"gomod",
	"gosum",
	"rust",
	"typescript",
	"tsx",
	"javascript",
	"html",
	"css",
	"json",
	"jsonc",
	"yaml",
	"toml",
	"c",
	"cpp",
	"cmake",
	"make",
	"bash",
	"markdown",
	"markdown_inline",
	"regex",
	"diff",
	"git_config",
	"gitcommit",
	"gitignore",
	"dockerfile",
	"sql",
}

local already_installed = require("nvim-treesitter.config").get_installed()
local to_install = vim.iter(ensure_installed)
	:filter(function(p)
		return not vim.tbl_contains(already_installed, p)
	end)
	:totable()

if #to_install > 0 then
	require("nvim-treesitter").install(to_install)
end

-- start treesitter highlighting + indent on any buffer whose filetype has a parser
vim.api.nvim_create_autocmd("FileType", {
	callback = function()
		pcall(vim.treesitter.start)
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})
