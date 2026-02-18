return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        jdtls = { mason = false },
      },
      setup = {
        jdtls = function()
          return true
        end,
      },
    },
  },

  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      local lombok_path = vim.fn.expand("~/.config/nvim/lombok.jar")

      opts.jdtls = {
        cmd = {
          "jdtls",
          "--jvm-arg=-javaagent:" .. lombok_path,
        },
        root_dir = require("jdtls.setup").find_root({ ".git", "pom.xml", "build.gradle" }),
      }
    end,
  },
}
