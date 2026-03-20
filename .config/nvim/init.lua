-- bootstrap lazy.nvim, LazyVim and your plugins
-- KILL NETRW BEFORE ANYTHING ELSE
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Then your lazy.nvim stuff...
require("config.lazy")
