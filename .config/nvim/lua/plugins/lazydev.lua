return {
  "folke/lazydev.nvim",
  ft = "lua", -- only load on lua files
  opts = {
    library = {
      -- library items can be absolute paths
      -- ~/projects/my-awesome-lib
      -- plugins can be loaded by name
      "telescope.nvim",
    },
  },
}
