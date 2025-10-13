return {
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      local copilotIndex = nil
      for i, source in ipairs(opts.sources.default) do
        if source == "copilot" then
          copilotIndex = i
          break
        end
      end

      if copilotIndex then
        table.remove(opts.sources.default, copilotIndex)
      end
    end,
  },
  {
    "zbirenbaum/copilot.lua",
    config = function(_, opts)
      require("copilot").setup(opts)
      vim.keymap.set("i", "<Tab>", function()
        if require("copilot.suggestion").is_visible() then
          require("copilot.suggestion").accept()
        else
          vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
        end
      end, {
        silent = true,
      })
    end,
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = false,
      },
    },
  },
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
  -- {
  --   "hrsh7th/nvim-cmp",
  --   dependencies = { "zbirenbaum/copilot.lua" },
  --   ---@param opts cmp.ConfigSchema
  --   opts = function(_, opts)
  --     local cmp = require("cmp")
  --     opts.mapping = vim.tbl_extend("force", opts.mapping, {
  --       ["<C-j>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           cmp.select_next_item()
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --       ["<C-k>"] = cmp.mapping(function(fallback)
  --         if cmp.visible() then
  --           cmp.select_prev_item()
  --         else
  --           fallback()
  --         end
  --       end, { "i", "s" }),
  --     })
  --   end,
  -- },
}
