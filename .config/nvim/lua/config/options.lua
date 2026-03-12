-- Options are automatically loaded before lazy.nvim startup
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.g.mapleader = " "
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- UI Basics
vim.opt.number = true -- Show line numbers on the left

-- Interface behavior
vim.opt.title = true -- Update the terminal window title to the file name
vim.opt.autoindent = true -- Copy indent from current line when starting a new one
vim.opt.smartindent = true -- Smarter autoindenting (e.g., indents after '{')
vim.opt.hlsearch = true -- Highlight all search results
vim.opt.backup = false -- Disable creating backup files (file.txt~)
vim.opt.showcmd = true -- Show partial command in the last line of the screen
vim.opt.cmdheight = 0 -- Hide the command line when not typing (cleaner look)
vim.opt.laststatus = 0 -- Hide the global status line at the bottom
vim.opt.expandtab = true -- Use spaces instead of actual tab characters
vim.opt.scrolloff = 10 -- Keep cursor 10 lines from top/bottom edges when scrolling
vim.opt.inccommand = "split" -- Show live preview of substitutions (like find/replace) in a split
vim.opt.ignorecase = true -- Ignore case when searching (searching 'test' finds 'Test')
vim.opt.smarttab = true -- improved tab behavior
vim.opt.breakindent = true -- Wrapped lines will visually indent to match the line start

-- Indentation Settings (2 spaces)
vim.opt.shiftwidth = 2 -- Size of an indent (when using >> or autoindent)
vim.opt.tabstop = 2 -- How wide a Tab character looks
vim.opt.wrap = false -- Do not wrap long lines (lines go off screen)

-- Backspace behavior
-- Allow backspacing over auto-indent, line breaks, and start of insert
vim.opt.backspace = { "start", "eol", "indent" }

-- File Finding
vim.opt.path:append({ "**" }) -- Search recursively in subfolders when using :find

-- (The last line in your image was being edited, but this is likely what you want)
-- Ignore these files when completing names or searching
vim.opt.wildignore:append({ "*/node_modules/*" })
