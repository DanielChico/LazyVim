return {
  -- add gruvbox
  { "navarasu/onedark.nvim" },
  { "ellisonleao/gruvbox.nvim" },
  { "projekt0n/github-nvim-theme" },
  { "catppuccin/nvim" },
  { "rose-pine/neovim" },
  { "sainnhe/everforest" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
