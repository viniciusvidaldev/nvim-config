local fzf = require("fzf-lua")
fzf.setup({
	ui_select = false,
	files = {
		cmd = "fd --type f --hidden --exclude .git",
	},
	winopts = {
		height = 0.85,
		width = 0.85,
		preview = {
			layout = "horizontal",
			horizontal = "right:50%",
		},
	},
})

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
vim.keymap.set("n", "<leader>Gs", fzf.git_status, { desc = "git status" })
vim.keymap.set("n", "<leader>Gc", fzf.git_commits, { desc = "git commits" })
vim.keymap.set("n", "<leader>Gbc", fzf.git_bcommits, { desc = "git buffer commits" })

fzf.register_ui_select()
