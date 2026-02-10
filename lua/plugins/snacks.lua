return {
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts = opts or {}
      opts.picker = { enabled = false }
      return opts
    end,
  },
}
