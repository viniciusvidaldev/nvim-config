return {
  "xiyaowong/transparent.nvim",
  config = function()
    require("transparent").setup()

    -- Add keybind
    vim.keymap.set("n", "<leader>tt", ":TransparentToggle<CR>", { desc = "Toggle transparency" })
  end,
}
