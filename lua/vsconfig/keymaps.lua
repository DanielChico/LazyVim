local opts = { noremap = true, silent = true }
vim.keymap.set("n", "<Space>", "", opts)
vim.keymap.set("n", "]d", "<cmd>lua require('vscode').action('editor.action.marker.nextInFiles')<CR>", opts)
vim.keymap.set("n", "[d", "<cmd>lua require('vscode').action('editor.action.marker.prevInFiles')<CR>", opts)
vim.keymap.set("n", "<leader>sg", "<cmd>lua require('vscode').action('workbench.action.findInFiles')<CR>", opts)
vim.keymap.set("n", "<leader>ca", "<cmd>lua require('vscode').action('editor.action.codeAction')<CR>", opts)
vim.keymap.set("n", "<leader>cr", "<cmd>lua require('vscode').action('editor.action.rename')<CR>", opts)
vim.keymap.set("n", "<C-a>", "ggVG")
