vim.pack.add({
	"https://github.com/stevearc/oil.nvim",
	"https://github.com/christoomey/vim-tmux-navigator",

	-- treesitter
	"https://github.com/nvim-treesitter/nvim-treesitter",

	-- mason / lsp
	"https://github.com/williamboman/mason.nvim",
	"https://github.com/williamboman/mason-lspconfig.nvim",
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	"https://github.com/saghen/blink.lib",
	"https://github.com/saghen/blink.cmp",

	-- fzf
	"https://github.com/ibhagwan/fzf-lua",

	-- statusline
	"https://github.com/nvim-lualine/lualine.nvim",

	"https://github.com/kdheepak/lazygit.nvim",

	-- formatter
	"https://github.com/stevearc/conform.nvim",
})

require("plugins.oil")
require("plugins.tmux")
require("plugins.treesitter")
require("plugins.mason")
require("plugins.blink")
require("plugins.fzf")
require("plugins.conform")
require("plugins.statusline")
require("plugins.lazygit")
