return {
  {
    "nvim-telescope/telescope.nvim",
    enabled = false, -- Disables LazyVim's Telescope config if you had it
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      "jvgrootveld/telescope-zoxide",
      "nvim-telescope/telescope-ui-select.nvim", -- Add this as a dependency
    },
    config = function()
      require("telescope").setup({
        defaults = {
          preview = {
            treesitter = false,
          },
          border = {
            prompt = { 1, 1, 1, 1 },
            results = { 1, 1, 1, 1 },
            preview = { 1, 1, 1, 1 },
          },
          borderchars = {
            prompt = { " ", " ", "─", "│", "│", " ", "─", "└" },
            results = { "─", " ", " ", "│", "┌", "─", " ", "│" },
            preview = { "─", "│", "─", "│", "┬", "┐", "┘", "┴" },
          },
        },
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
        pickers = {
          colorscheme = {
            enable_preview = true,
          },
          find_files = {
            hidden = true,
            find_command = {
              "rg",
              "--files",
              "--glob",
              "!{.git/*,.next/*,.svelte-kit/*,target/*,node_modules/*}",
              "--path-separator",
              "/",
            },
          },
        },
      })

      -- Load extensions
      require("telescope").load_extension("zoxide")
      require("telescope").load_extension("ui-select")

      -- Keymaps
      local builtin = require("telescope.builtin")
      vim.keymap.set(
        "n",
        "<leader>jk",
        "<cmd>lua require'telescope.builtin'.find_files({ find_command = {'rg', '--files', '--hidden', '-g', '!.git' }})<cr>",
        {}
      )
      vim.keymap.set("n", "<leader>fb", ":Telescope file_browser<cr>", {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      vim.keymap.set("n", "<leader>fd", builtin.diagnostics, {})
      vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})
      vim.keymap.set("n", "<leader>ws", builtin.lsp_workspace_symbols, {})
      vim.keymap.set("n", "<leader>fz", ":Telescope zoxide list<CR>", {})
      vim.keymap.set("n", "<leader>fv", builtin.help_tags, {})
      vim.keymap.set("n", "<leader>fp", builtin.builtin, {})
    end,
  },
}
