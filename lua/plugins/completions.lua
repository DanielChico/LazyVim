return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        ["<C-j>"] = {
          "select_next",
          "snippet_forward",
          "fallback",
        },
        ["<C-k>"] = {
          "select_prev",
          "snippet_backward",
          "fallback",
        },
      },
      completion = {
        menu = {
          auto_show = true,
        },
        ghost_text = {
          enabled = false,
        },
      },
    },
  },
}
