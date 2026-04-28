local fzf = require("fzf-lua")
fzf.setup({
	ui_select = false,
	files = {
		cmd = "fd --type f --hidden --exclude .git --exclude target --exclude node_modules",
		cwd_prompt = false,
	},
	winopts = {
		title = "",
		height = 0.95,
		width = 0.95,
		header = false,
		preview = {
			layout = "horizontal",
			horizontal = "right:55%",
		},
	},
	git = {
		preview_cliargs = "--delta",
	},
})

vim.api.nvim_set_hl(0, "FzfLuaHeaderBind", { fg = "#60849c" })
vim.api.nvim_set_hl(0, "FzfLuaHeaderText", { fg = "#A0BDB8" })

-- file and buffer navigation
vim.keymap.set("n", "<leader>f", fzf.files, { desc = "find files" })
vim.keymap.set("n", "<leader>b", fzf.buffers, { desc = "find buffers" })
vim.keymap.set("n", "<leader>g", fzf.live_grep, { desc = "live grep" })
vim.keymap.set("n", "<leader>r", fzf.oldfiles, { desc = "recent files" })

-- lsp
vim.keymap.set("n", "gd", fzf.lsp_definitions, { desc = "go to definition" })
vim.keymap.set("n", "gr", fzf.lsp_references, { desc = "go to references" })
vim.keymap.set("n", "<leader>ca", fzf.lsp_code_actions, { desc = "code actions" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename" })

-- git
vim.keymap.set("n", "<leader>ss", fzf.git_status, { desc = "git status" })
vim.keymap.set("n", "<leader>sc", fzf.git_commits, { desc = "git commits" })

-- colorscheme
vim.keymap.set("n", "<leader>cs", fzf.colorschemes, { desc = "change colorscheme" })

fzf.register_ui_select()
