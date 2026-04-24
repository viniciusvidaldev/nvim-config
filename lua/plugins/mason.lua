require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = {
    "lua_ls",
    "ts_ls",
    "rust_analyzer",
    "gopls",
    "clangd",
  },
})

require("mason-tool-installer").setup({
  ensure_installed = {
    -- formatters
    "prettier",      -- ts/js/json/css/html
    "stylua",        -- lua
    "gofumpt",       -- go
    "clang-format",  -- c/c++
    -- linters
    "eslint_d",      -- ts/js
    "golangci-lint", -- go
  },
})

-- configure individual servers
vim.lsp.config("lua_ls", {
  settings = {
    Lua = {
      diagnostics = { globals = { "vim" } },
    },
  },
})
