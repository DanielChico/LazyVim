local prefix = "<Leader>a"
return {
  "yetone/avante.nvim",
  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
  -- ⚠️ must add this setting! ! !
  build = function()
    -- conditionally use the correct build system for the current OS
    if vim.fn.has("win32") == 1 then
      return "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false"
    else
      return "make"
    end
  end,
  event = "VeryLazy",
  config = function(_, opts)
    require("avante").setup(opts)
    local normalFloatHl = vim.api.nvim_get_hl(0, { name = "NormalFloat" })
    local avanteReversedTitleHl = vim.api.nvim_get_hl(0, { name = "AvanteReversedTitle" })
    local avanteReversedSubtitleHl = vim.api.nvim_get_hl(0, { name = "AvanteReversedSubtitle" })
    local avanteReversedThirdTitleHl = vim.api.nvim_get_hl(0, { name = "AvanteReversedThirdTitle" })
    vim.api.nvim_set_hl(0, "AvanteReversedTitle", { bg = normalFloatHl.bg, fg = avanteReversedTitleHl.fg })
    vim.api.nvim_set_hl(0, "AvanteReversedSubtitle", { bg = normalFloatHl.bg, fg = avanteReversedSubtitleHl.fg })
    vim.api.nvim_set_hl(0, "AvanteReversedThirdTitle", { bg = normalFloatHl.bg, fg = avanteReversedThirdTitleHl.fg })
  end,
  version = false, -- Never set this value to "*"! Never!
  opts = {
    -- add any opts here
    -- for example
    mappings = {
      ask = prefix .. "<CR>",
      edit = prefix .. "e",
      refresh = prefix .. "r",
      focus = prefix .. "f",
      toggle = {
        default = prefix .. "a",
        debug = prefix .. "d",
        hint = prefix .. "h",
        suggestion = prefix .. "s",
        repomap = prefix .. "R",
      },
      diff = {
        next = "]c",
        prev = "[c",
      },
      files = {
        add_current = prefix .. ".",
      },
    },
    windows = {
      width = 40,
    },
    provider = "copilot",
    providers = {
      copilot = {
        model = "gpt-5",
        timeout = 30000, -- Timeout in milliseconds
      },
    },
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    --- The below dependencies are optional,
    {
      -- support for image pasting
      "HakonHarnes/img-clip.nvim",
      event = "VeryLazy",
      opts = {
        -- recommended settings
        default = {
          embed_image_as_base64 = false,
          prompt_for_file_name = false,
          drag_and_drop = {
            insert_mode = true,
          },
          -- required for Windows users
          use_absolute_path = true,
        },
      },
    },
    {
      -- Make sure to set this up properly if you have lazy=true
      "MeanderingProgrammer/render-markdown.nvim",
      dependencies = {
        -- make sure rendering happens even without opening a markdown file first
        "yetone/avante.nvim",
      },
      opts = function(_, opts)
        opts.file_types = opts.file_types or { "markdown", "norg", "rmd", "org" }
        vim.list_extend(opts.file_types, { "Avante" })
      end,
    },
  },
}
