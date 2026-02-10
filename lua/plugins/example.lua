return {
  {
    "akinsho/flutter-tools.nvim",
    lazy = false, -- Garante que o plugin carregue assim que o Neovim abrir
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- Ajuda na interface de seleção de dispositivos
    },
    config = function(_, opts)
      -- Isso garante que o plugin seja configurado com as suas opções
      require("flutter-tools").setup(opts)
    end,
    opts = {
      widget_guides = { enabled = true },
      dev_log = { enabled = false },
      hot_reload = true, -- Ativa o reload ao salvar (:w)
      lsp = {
        color = { enabled = true },
        -- Aqui garantimos que o LSP do Dart não entre em conflito
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
        },
      },
    },
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000,
    opts = { style = "moon" },
  },

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "google-java-format",
        "php-cs-fixer",
        "intelephense",
        "stylua",
      },
    },
  },

  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        sorting_strategy = "ascending",
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        focus = "list",
        indent = 0,
        filters = {
          git_ignored = false,
          dotfiles = false,
        },
        layout = {
          layout = {
            width = 40,
          },
        },
      },
    },
  },
}
