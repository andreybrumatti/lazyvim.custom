return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = {
          capabilities = {
            offsetEncoding = { "utf-16" },
          },
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                useLibraryCodeForTypes = true,
                diagnosticMode = "workspace",
                typeCheckingMode = "basic",
              },
            },
          },
        },
        ruff = {},
      },
      setup = {
        pyright = function(_, opts)
          local venv_path = vim.fn.getcwd() .. "/.venv/bin/python"
          opts.settings.python.pythonPath = venv_path
        end,
      },
    },
  },
}
