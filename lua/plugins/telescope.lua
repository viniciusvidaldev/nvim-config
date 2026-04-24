local telescope = require("telescope")
local builtin = require("telescope.builtin")

telescope.setup({
	defaults = {
		file_ignore_patterns = { ".git/" },
	},
	pickers = {
		find_files = {
			hidden = true,
		},
		live_grep = {
			additional_args = { "--hidden", "--glob", "!.git" },
		},
	},
})

-- file and buffer navigation
vim.keymap.set("n", "<leader>f", builtin.find_files, { desc = "find files" })
vim.keymap.set("n", "<leader>b", builtin.buffers, { desc = "find buffers" })
vim.keymap.set("n", "<leader>g", builtin.live_grep, { desc = "live grep" })
vim.keymap.set("n", "<leader>r", builtin.oldfiles, { desc = "recent files" })

-- lsp
vim.keymap.set("n", "gd", builtin.lsp_definitions, { desc = "go to definition" })
vim.keymap.set("n", "gr", builtin.lsp_references, { desc = "go to references" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "code actions" })
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { desc = "rename" })

-- git
vim.keymap.set("n", "<leader>gs", builtin.git_status, { desc = "git status" })
vim.keymap.set("n", "<leader>gc", builtin.git_commits, { desc = "git commits" })
vim.keymap.set("n", "<leader>gbc", builtin.git_bcommits, { desc = "git buffer commits" })
