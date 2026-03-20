# Yazi Keymap Reference

This document categorises the default keybindings for the terminal file manager, ordered from the most essential daily operations to more specific, contextual functions.

## 1. Core Navigation & File Management

These are the most frequently used shortcuts for moving through directories and managing files.

| Keybinding                    | Action                                       |
| :---------------------------- | :------------------------------------------- |
| `q`                           | Quit the application                         |
| `k` / `j` / `<Up>` / `<Down>` | Move cursor up / down (Previous / Next file) |
| `h` / `<Left>`                | Leave (Back to parent directory)             |
| `l` / `<Right>`               | Enter (Navigate into child directory)        |
| `<Enter>` / `o`               | Open selected files                          |
| `y`                           | Yank (Copy) selected files                   |
| `x`                           | Cut selected files                           |
| `p`                           | Paste yanked/cut files                       |
| `d`                           | Move selected files to the trash             |
| `D`                           | Permanently delete selected files            |
| `a`                           | Create a file (append `/` for a directory)   |
| `r`                           | Rename selected file(s)                      |

## 2. Advanced Navigation & Search

Useful for moving swiftly through large directories or locating specific files.

| Keybinding         | Action                                                          |
| :----------------- | :-------------------------------------------------------------- |
| `gg` / `G`         | Jump to the top / bottom of the directory list                  |
| `<C-u>` / `<C-d>`  | Move cursor up / down by half a page                            |
| `/` / `?`          | Find next / previous file                                       |
| `n` / `N`          | Jump to next / previous found item                              |
| `s` / `S`          | Search files by name (via `fd`) / by content (via `ripgrep`)    |
| `z` / `Z`          | Jump to a directory/file via `fzf` / `zoxide`                   |
| `gh` / `gc` / `gd` | Go to `~` (Home) / `~/.config` / `~/Downloads`                  |
| `H` / `L`          | Navigate back to previous directory / forward to next directory |

## 3. Selection, Sorting & Views

Commands for manipulating how you view and select multiple files.

| Keybinding    | Action                                                      |
| :------------ | :---------------------------------------------------------- |
| `<Space>`     | Toggle selection state of the current file                  |
| `v` / `<C-a>` | Enter visual (selection) mode / Select all files            |
| `.`           | Toggle visibility of hidden files                           |
| `cc` / `cd`   | Copy the absolute file path / directory path to clipboard   |
| `cf` / `cn`   | Copy the filename / filename without extension to clipboard |
| `,s` / `,S`   | Sort by size (ascending / descending)                       |
| `,m` / `,M`   | Sort by modified time (ascending / descending)              |
| `,e` / `,a`   | Sort by extension / alphabetically                          |

## 4. Tabs & Tasks

Shortcuts for multitasking and managing background operations.

| Keybinding | Action                                            |
| :--------- | :------------------------------------------------ |
| `tt`       | Create a new tab in the current working directory |
| `1` - `9`  | Switch to a specific tab number                   |
| `[` / `]`  | Switch to the previous / next tab                 |
| `tr`       | Rename the current tab                            |
| `w`        | Show the task manager                             |

## 5. Input Mode & Niche Operations

Shortcuts primarily used when typing paths, renaming files, or executing shell commands.

| Keybinding   | Action                                                          |
| :----------- | :-------------------------------------------------------------- |
| `;` / `:`    | Run an interactive shell command / Run a blocking shell command |
| `<Tab>`      | Spot (preview) the currently hovered file                       |
| `i` / `a`    | Enter insert mode / Enter append mode (Input Mode)              |
| `w` / `b`    | Move forward / backward by word (Input Mode)                    |
| `0` / `$`    | Move to the beginning / end of the line (Input Mode)            |
| `~` / `<F1>` | Open the help menu                                              |
