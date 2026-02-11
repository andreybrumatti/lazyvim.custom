return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        intelephense = {
          enabled = true,
          cmd = { "intelephense", "--stdio" },
          filetypes = { "php", "blade" },
          root_dir = function(fname)
            local util = require("lspconfig.util")
            return util.root_pattern("composer.json", ".git", "artisan")(fname) or vim.fn.getcwd()
          end,
          settings = {
            intelephense = {
              diagnostics = {
                enable = true,
                undefinedClassDeclarations = true,
                undefinedFunctions = true,
                undefinedConstants = true,
                undefinedProperties = true,
                undefinedTypes = true,
              },
              completion = {
                insertUseDeclaration = true,
              },
            },
          },
        },
        phpactor = { enabled = false },
      },
    },
  },
}
