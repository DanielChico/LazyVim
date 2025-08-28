-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.scrolloff = 8
vim.opt.tabstop = 4
vim.opt.expandtab = false
-- vim.opt.shiftwidth = 4
vim.opt.textwidth = 120
vim.g.lazyvim_python_lsp = "basedpyright"
vim.opt.wrap = true
vim.opt.spelllang = { "en", "es" }
vim.opt.spelloptions = "camel,noplainbuffer"
vim.opt.spell = true
vim.g.snacks_animate = false
vim.g.ai_cmp = true
vim.g.root_spec = { "cwd" }
vim.lsp.set_log_level("off")
