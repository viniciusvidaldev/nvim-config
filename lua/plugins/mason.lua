require("mason").setup()

require("mason-lspconfig").setup({
	ensure_installed = {
		"lua_ls",
		"ts_ls",
		"rust_analyzer",
		"gopls",
		"clangd",
		"sqls",
	},
})

require("mason-tool-installer").setup({
	ensure_installed = {
		-- formatters
		"prettier", -- ts/js/json/css/html/yaml/md
		"stylua", -- lua
		"gofumpt", -- go
		"goimports", -- go imports
		"clang-format", -- c/c++
		"sql-formatter", -- sql
		"taplo", -- toml
		"shfmt", -- bash/sh
		"ruff", -- python (format + lint)
		-- linters
		"eslint_d", -- ts/js
		"golangci-lint", -- go
	},
})

-- configure individual servers
vim.lsp.config("lua_ls", {
	settings = {
		Lua = {
			diagnostics = { globals = { "vim" } },
		},
	},
})

vim.lsp.config("rust_analyzer", {
	settings = {
		["rust-analyzer"] = {
			cargo = { allFeatures = true, loadOutDirsFromCheck = true },
			procMacro = { enable = true },
			check = { command = "clippy" },
		},
	},
})
