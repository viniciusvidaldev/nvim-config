# nvim

Personal Neovim config (0.12+, uses built-in `vim.pack`).

## Plugins

- [oil.nvim](https://github.com/stevearc/oil.nvim) — file explorer
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator) — seamless tmux/nvim pane navigation
- [mason.nvim](https://github.com/williamboman/mason.nvim) — LSP/tool installer
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason-tool-installer.nvim](https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim)
- [blink.lib](https://github.com/saghen/blink.lib)
- [blink.cmp](https://github.com/saghen/blink.cmp) — completion
- [fzf-lua](https://github.com/ibhagwan/fzf-lua) — fuzzy finder
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) — statusline
- [lazygit.nvim](https://github.com/kdheepak/lazygit.nvim) — lazygit integration

## Mason-managed

**LSP servers:** `lua_ls`, `ts_ls`, `rust_analyzer`, `gopls`, `clangd`

**Formatters:** `prettier`, `stylua`, `gofumpt`, `clang-format`

**Linters:** `eslint_d`, `golangci-lint`

## Colorschemes

Local, in `colors/`:

- `gruvbox` (active — set in `init.lua`)
- `rose`
