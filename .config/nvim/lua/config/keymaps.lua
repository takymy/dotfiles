-- Define local variables for cleaner code
local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- -------------------------------------------------------------------------
-- Tabs Management
-- -------------------------------------------------------------------------
-- New Tab: Press 'te' to open a new empty tab
keymap.set("n", "te", ":tabedit")

-- Next Tab: Press 'Tab' to switch to the next tab on the right
keymap.set("n", "<tab>", ":tabnext<Return>", opts)

-- Previous Tab: Press 'Shift+Tab' to switch to the previous tab on the left
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)

-- Close Tab: Press 'tw' to close the current tab
keymap.set("n", "tw", ":tabclose<Return>", opts)

-- -------------------------------------------------------------------------
-- Split Window Management
-- -------------------------------------------------------------------------
-- Horizontal Split: Press 'ss' to split the window top/bottom
keymap.set("n", "ss", ":split<Return>", opts)

-- Vertical Split: Press 'sv' to split the window side-by-side
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- -------------------------------------------------------------------------
-- Move Focus (Window Navigation)
-- -------------------------------------------------------------------------
-- Instead of Ctrl+w then h/j/k/l, use 's' + direction
-- Note: 's' is often used as a prefix key in configs like this.

keymap.set("n", "sh", "<C-w>h") -- Move cursor to the LEFT window
keymap.set("n", "sk", "<C-w>k") -- Move cursor to the TOP window
keymap.set("n", "sj", "<C-w>j") -- Move cursor to the BOTTOM window
keymap.set("n", "sl", "<C-w>l") -- Move cursor to the RIGHT window

-- -------------------------------------------------------------------------
-- Resize Windows
-- -------------------------------------------------------------------------
-- Resize with Ctrl + Shift + Arrow keys (h/j/k/l)

-- Make window narrower (decrease width)
keymap.set("n", "<C-S-h>", "<C-w><")

-- Make window wider (increase width)
keymap.set("n", "<C-S-l>", "<C-w>>")

-- Make window taller (increase height)
keymap.set("n", "<C-S-k>", "<C-w>+")

-- Make window shorter (decrease height)
keymap.set("n", "<C-S-j>", "<C-w>-")

-- -------------------------------------------------------------------------
-- Diagnostics (Errors & Warnings)
-- -------------------------------------------------------------------------
-- Jump to the next error/warning (Forward)
keymap.set("n", "<C-j>", function()
  vim.diagnostic.jump({ count = 1, float = true })
end, opts)

-- (Optional) Jump to the previous error/warning (Backward)
keymap.set("n", "<C-k>", function()
  vim.diagnostic.jump({ count = -1, float = true })
end, opts)
