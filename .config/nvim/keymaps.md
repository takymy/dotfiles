# Personal Neovim Keymap Reference

**Leader Key:** `<Space>`

## 1. Window & Workspace Management

Bindings for navigating and sizing your splits, tabs, and buffers.

| Keybinding                | Action                                                               |
| :------------------------ | :------------------------------------------------------------------- |
| `ss` / `sv`               | Create horizontal split (top/bottom) / vertical split (side-by-side) |
| `sh` / `sj` / `sk` / `sl` | Move focus to the left / bottom / top / right window                 |
| `<C-S-h>` / `<C-S-l>`     | Decrease / Increase window width                                     |
| `<C-S-j>` / `<C-S-k>`     | Decrease / Increase window height                                    |
| `te` / `tw`               | Open a new empty tab / Close the current tab                         |
| `<Tab>` / `<S-Tab>`       | Switch to the next / previous tab/buffer                             |

## 2. Global Search & Exploration (Telescope)

Shortcuts to find files, search text, and inspect your code environment.

| Keybinding | Action                                                    |
| :--------- | :-------------------------------------------------------- |
| `;f`       | Find files (respects `.gitignore`, includes hidden files) |
| `;r`       | Live grep (search file contents)                          |
| `\\`       | List all open buffers                                     |
| `;;`       | Resume the last active picker                             |
| `;e`       | Open diagnostics list                                     |
| `;s`       | Find functions & variables (Treesitter)                   |
| `sf`       | Open file browser at the current buffer's path            |

## 3. Diagnostics, Git & External Tools

Quick access to version control, database UI, and code health.

| Keybinding        | Action                                 |
| :---------------- | :------------------------------------- |
| `<C-j>` / `<C-k>` | Jump to the next / previous diagnostic |
| `;c`              | Open LazyGit                           |
| `<leader>d`       | Open Database UI (Dadbod)              |
| `<leader>e`       | Toggle NvimTree explorer               |

---

## 4. Contextual Plugin Keymaps

These bindings are only active when you have specific plugins focused.

### Inside NvimTree

| Keybinding   | Action                                |
| :----------- | :------------------------------------ |
| `l` / `<CR>` | Open the file / Expand the directory  |
| `h`          | Close the parent directory            |
| `t`          | Open the hovered file in a new tab    |
| `H`          | Toggle the visibility of hidden files |
| `a`          | Create a new file/directory           |
| `r` / `d`    | Rename / Delete the selected item     |

### Inside Telescope File Browser

| Keybinding        | Action                                |
| :---------------- | :------------------------------------ |
| `N`               | Create a new file/directory           |
| `h`               | Move to the parent directory          |
| `<C-u>` / `<C-d>` | Move the cursor up / down by 10 items |
