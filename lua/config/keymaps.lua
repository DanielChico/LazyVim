-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>b", "<C-o>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>n", "<C-i>", { desc = "Next Buffer" })
vim.keymap.set("n", "<C-a>", "ggVG")
local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<c-\\>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })
vim.keymap.set("i", "<C-/>", "<Esc>:Commentary<CR>")
vim.keymap.set("n", "<C-/>", "gcc", { remap = true })
vim.keymap.set("v", "<C-/>", "gc", { remap = true })
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>tv", function()
  require("venv-selector").deactivate()
end, { desc = "Toogle Venv" })
