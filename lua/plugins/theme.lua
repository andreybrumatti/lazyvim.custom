return {
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      disable_background = false,
      disable_float_background = false,
      groups = {
        background = "#121212",
        panel = "#121212",
        border = "#222222",
      },
      on_highlights = function(groups, color)
        groups.Normal = { fg = "#FFFFFF", bg = "#121212" }

        groups.NeoTreeNormal = { bg = "#121212" }
        groups.NeoTreeNormalNC = { bg = "#121212" }
      end,
    },
    config = function(_, opts)
      require("poimandres").setup(opts)

      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          local sel = "#34495E"

          vim.api.nvim_set_hl(0, "Visual", { bg = sel, fg = "none" })

          vim.api.nvim_set_hl(0, "IlluminatedWordText", { bg = sel })
          vim.api.nvim_set_hl(0, "IlluminatedWordRead", { bg = sel })
          vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { bg = sel })
          vim.api.nvim_set_hl(0, "LspReferenceText", { bg = sel })
          vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = sel })
          vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = sel })
        end,
      })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "poimandres",
    },
  },
}

-- return {
--   {
--     "catppuccin/nvim",
--     name = "catppuccin",
--     priority = 1000,
--     opts = {
--       flavour = "mocha",
--       color_overrides = {
--         mocha = {
--           base = "#1a1a1a",
--           mantle = "#161616",
--           crust = "#111111",
--         },
--       },
--       styles = {
--         comments = {},
--         conditionals = { "bold" },
--         loops = { "bold" },
--         functions = {},
--         keywords = { "bold" },
--         strings = {},
--         variables = {},
--         numbers = {},
--         booleans = {},
--         properties = {},
--         types = {},
--         operators = {},
--       },
--     },
--   },
--   {
--     "LazyVim/LazyVim",
--     opts = {
--       colorscheme = "catppuccin",
--     },
--   },
-- }
