return {
  "folke/snacks.nvim",
  keys = {
    { "<C-p>", LazyVim.pick("files"), desc = "Find Files" },
  },
  opts = {
    picker = {
      sources = {
        files = { hidden = true },
        explorer = {
          layout = {
            auto_hide = {
              "input",
            },
          },
        },
      },
    },
  },
}
