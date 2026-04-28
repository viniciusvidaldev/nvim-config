require("blink.cmp").setup({
  keymap = {
    preset = "default",
    ["<CR>"] = { "accept", "fallback" },
  },
  appearance = {
    nerd_font_variant = "mono",
  },
  completion = {
    documentation = { auto_show = true, auto_show_delay_ms = 200 },
    trigger = {
      show_on_trigger_character = true,
      show_on_insert_on_trigger_character = true,
    },
  },
  sources = {
    default = { "lsp", "path", "snippets", "buffer" },
  },
  fuzzy = { implementation = "lua" },
})
