-- general settings
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set ts=2")
vim.cmd("set cmdheight=0")
vim.cmd("set termguicolors")
vim.cmd("set scrolloff=5")
vim.cmd("autocmd FileType sql setlocal noautoindent")
vim.cmd("autocmd FileType sql setlocal nosmartindent")
vim.cmd("autocmd FileType sql setlocal nocindent")
vim.cmd("set signcolumn=no")
vim.cmd("set foldmethod=expr")
vim.cmd("set foldexpr=nvim_treesitter#foldexpr()")
vim.cmd("set foldlevel=99")
vim.cmd("set foldnestmax=1")
vim.cmd("set foldopen-=hor")
vim.cmd("set splitright")

vim.o.scrolloff = 5
vim.opt.list = false
vim.g.snacks_animate = false
vim.opt.guicursor = "n-v-c:block-blinkon1-CursorInsert,i:block-CursorInsert"

vim.diagnostic.config({
  virtual_text = true,
})

-- minor visual changes to panes
vim.opt.fillchars =
  { vert = " ", horiz = " ", horizup = " ", horizdown = " ", vertleft = " ", vertright = " ", verthoriz = " " }

-- stop right-shift when errors/warning appear
vim.o.signcolumn = "no"
vim.o.completeopt = "menuone,noselect,preview"
