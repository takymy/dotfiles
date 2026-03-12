return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        enabled = false, -- Disable Snacks explorer
      },
    },
    keys = {
      { "<leader>e", false }, -- Disable the keybind
      { "<leader>fe", false }, -- Also disable this one
    },
  },
  {
    "folke/persistence.nvim",
    opts = {
      options = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp" },
      pre_save = function()
        vim.api.nvim_exec_autocmds("User", { pattern = "SessionSavePre" })
      end,
    },
  },
  {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    priority = 1000, -- Load this FIRST
    keys = {
      { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "NvimTree" },
    },
    init = function()
      -- Double-kill netrw just to be sure
      vim.g.loaded_netrw = 1
      vim.g.loaded_netrwPlugin = 1

      vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
          if vim.fn.argc() > 0 then
            local file = vim.fn.argv(0)
            if vim.fn.isdirectory(file) == 0 then
              local dir = vim.fn.fnamemodify(file, ":p:h")
              vim.cmd("cd " .. vim.fn.fnameescape(dir))
            end
          end
        end,
      })

      vim.api.nvim_create_autocmd("FileType", {
        pattern = "NvimTree",
        callback = function()
          local api = require("nvim-tree.api")
          local bufnr = vim.api.nvim_get_current_buf()
          pcall(require("flash").toggle, false)
          vim.keymap.set("n", "t", api.node.open.tab, { buffer = bufnr, noremap = true, silent = true, nowait = true })
        end,
      })
    end,
    opts = {
      hijack_directories = {
        enable = true,
        auto_open = true,
      },
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = {
        enable = true,
        update_root = false,
      },
      on_attach = function(bufnr)
        local api = require("nvim-tree.api")
        local function opts(desc)
          return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        api.config.mappings.default_on_attach(bufnr)
        vim.keymap.set("n", "l", api.node.open.edit, opts("Open"))
        vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
        vim.keymap.set("n", "h", api.node.navigate.parent_close, opts("Close Directory"))
        vim.keymap.set("n", "H", api.tree.toggle_hidden_filter, opts("Toggle Dotfiles"))
        vim.keymap.set("n", "a", api.fs.create, opts("Create"))
        vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
        vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
      end,
      actions = { open_file = { quit_on_open = true } },
      view = { width = 30, relativenumber = true },
      renderer = { group_empty = true },
      filters = { dotfiles = true },
    },
  },
}
