vim.g.mapleader = " "

-- use sh for nvim subprocess spawning; fish is too slow
vim.o.shell = "/bin/sh"

-- keep 2 lines visible above/below cursor when scrolling
vim.opt.scrolloff = 2

-- 4-wide tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- snap indentation to multiples of shiftwidth
vim.opt.shiftround = true

-- yank/paste with system clipboard
vim.opt.clipboard = "unnamedplus"

-- faster CursorHold events and LSP diagnostics
vim.opt.updatetime = 250

-- restore exact scroll position when jumping through jumplist
vim.opt.jumpoptions = "view"

-- full RGB colors in the terminal
vim.opt.termguicolors = true

-- don't wrap long lines visually
vim.opt.wrap = false

-- always show sign column so buffer doesn't shift on diagnostics
vim.opt.signcolumn = "yes"

-- show line distances from cursor for easy motion counts
vim.opt.relativenumber = true

-- show absolute line number on the current line
vim.opt.number = true

-- open splits to the right and below instead of left and top
vim.opt.splitright = true
vim.opt.splitbelow = true

-- persist undo history across sessions (~/.local/state/nvim/undo/)
vim.opt.undofile = true

-- completion lists all matches and completes to longest common prefix
vim.opt.wildmode = "list:longest"

-- use real tabs, not spaces
vim.opt.expandtab = false

-- case-insensitive search by default
vim.opt.ignorecase = true

-- case-sensitive if search term contains uppercase
vim.opt.smartcase = true

-- ignore whitespace changes in diff mode
vim.opt.diffopt:append("iwhite")

-- use histogram diff algorithm with indent heuristic for smarter diffs
vim.opt.diffopt:append("algorithm:histogram")
vim.opt.diffopt:append("indent-heuristic")
