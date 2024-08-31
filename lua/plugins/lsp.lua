return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      capabilities = {
        workspace = {
          didChangeWatchedFiles = {
            dynamicRegistration = true,
          },
        },
      },
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "strict",
                diagnosticMode = "workspace",
              },
            },
            python = {
              pythonPath = ".venv/bin/python",
            },
          },
        },
      },
    },
  },
  {
    "linux-cultist/venv-selector.nvim",
    enabled = false,
  },
}
