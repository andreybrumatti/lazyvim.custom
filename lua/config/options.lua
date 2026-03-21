vim.opt.guicursor = "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50"

vim.filetype.add({
  filename = {
    ["compose.yaml"] = "yaml",
    ["compose.yml"] = "yaml",
  },
})

vim.treesitter.language.register("yaml", "docker-compose")
