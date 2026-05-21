-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>b", "<C-o>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>n", "<C-i>", { desc = "Next Buffer" })
vim.keymap.set("n", "<C-a>", "ggVG")
local lazyterm = function()
  Snacks.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<c-\\>", lazyterm, { desc = "Terminal (Root Dir)" })
vim.keymap.set("t", "<C-\\>", "<cmd>close<cr>", { desc = "Hide Terminal" })
for _, key in ipairs({ "<C-/>", "<C-_>" }) do
  vim.keymap.set("n", key, "gcc", { remap = true, desc = "Comment line" })
  vim.keymap.set("v", key, "gc", { remap = true, desc = "Comment selection" })
  vim.keymap.set("i", key, "<Esc>gccA", { remap = true, desc = "Comment line" })
end
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { desc = "Goto Implementation" })
vim.keymap.set("n", "<leader>lr", "<cmd>LspRestart<cr>", { desc = "Restart LSP" })
vim.keymap.set("n", "<leader>tv", function()
  require("venv-selector").deactivate()
end, { desc = "Toogle Venv" })
vim.keymap.set("n", "<leader>cpd", ":Copilot disable<cr>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>cpe", ":Copilot enable<cr>", { silent = true, noremap = true })
vim.keymap.set("i", "<M-]>", function()
  require("copilot.suggestion").next()
end)
vim.keymap.set("i", "<M-[>", function()
  require("copilot.suggestion").prev()
end)
