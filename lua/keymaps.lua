-- go to first non-whitespace character of line
vim.keymap.set({ "n", "v" }, "!", "^")

-- open oil file explorer
vim.keymap.set("n", "-", "<cmd>Oil<cr>")

-- open error float
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "show error" })
