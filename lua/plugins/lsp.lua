return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      inlay_hints = { enabled = false },
      servers = {
        ["*"] = {
          capabilities = {
            workspace = {
              didChangeWatchedFiles = {
                dynamicRegistration = true,
              },
            },
          },
          keys = {
            { "<c-k>", false, mode = "i" },
          },
        },
        -- basedpyright = {
        --   settings = {
        --     basedpyright = {
        --       analysis = {
        --         typeCheckingMode = "standard",
        --         diagnosticMode = "openFilesOnly",
        --       },
        --     },
        --     python = {
        --       pythonPath = ".venv/bin/python",
        --     },
        --   },
        -- },
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                maxTsServerMemory = 8192,
              },
            },
            javascript = {
              tsserver = {
                maxTsServerMemory = 8192,
              },
            },
          },
        },
      },
    },
  },
}
