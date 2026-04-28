require("transparent").setup({})

vim.keymap.set("n", "<leader>tt", "<cmd>TransparentToggle<cr>", { desc = "toggle transparency" })
