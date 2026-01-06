-- local colorscheme = "custom"
-- local colorscheme = "rust-del"

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- theme
-- vim.cmd("colorscheme " .. colorscheme)

vim.cmd.colorscheme("custom")
require("transparent").setup()
require("mini.surround").setup()
