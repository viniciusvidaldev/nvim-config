require("vim._core.ui2").enable()

vim.cmd([[set noswapfile]])

require("options")
require("plugins")
require("keymaps")

vim.cmd("colorscheme gruvbox-bigt")
