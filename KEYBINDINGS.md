# Neovim Keybindings Cheat Sheet

## Leader Key
- Leader: `<space>` (default)

## Which-Key
**DISABLED** - which-key popup has been disabled for faster workflow.
- Use this cheat sheet to reference keybindings
- Or use `:Telescope keymaps` to search available keybindings

## Git Commands

### Main Git Tools
| Key | Command | Description |
|-----|---------|-------------|
| `<leader>gg` | Neogit | Open Neogit git interface |
| `<leader>gC` | gh-dash | GitHub dashboard (PRs/Issues) |
| `<leader>gv` | Diffview | Open git diff view |
| `<leader>gh` | File History | Show git history for current file |
| `<leader>gf` | Format | Format current buffer |

### LSP (Code Navigation)
| Key | Command | Description |
|-----|---------|-------------|
| `K` | Hover | Show documentation |
| `gd` | Go to Definition | Jump to definition |
| `gD` | Go to Declaration | Jump to declaration |
| `gr` | References | Show references |
| `<leader>ca` | Code Actions | Show code actions |
| `<space>rn` | Rename | Rename symbol |

### LSP Diagnostics (TypeScript Errors)
| Key | Command | Description |
|-----|---------|-------------|
| `<space>e` | Show Diagnostic | Open diagnostic float with error details |
| `]d` | Next Diagnostic | Go to next error/warning |
| `[d` | Previous Diagnostic | Go to previous error/warning |

**Workflow for viewing TypeScript errors:**
1. Navigate between errors: `]d` / `[d`
2. View full error details: `<space>e`
3. Jump to definition if needed: `gd`

**Copying diagnostic text to clipboard:**
1. Open diagnostic: `<space>e`
2. Enter the float window: `<C-w>w` (Ctrl+w, then w)
3. Visual select the text: `V` (line-wise) or `v` (character-wise)
4. Copy to system clipboard: `"+y` or use `:w !pbcopy`
5. Paste anywhere with `Cmd+V`

### Autocomplete (Code Completion)
| Key | Command | Description |
|-----|---------|-------------|
| `<C-n>` | Next Suggestion | Move to next autocomplete item (Ctrl+n) |
| `<C-p>` | Previous Suggestion | Move to previous autocomplete item (Ctrl+p) |
| `<CR>` | Select Item | Accept highlighted suggestion (Enter) |
| `<C-y>` | Confirm | Accept first suggestion immediately |
| `<C-e>` | Close Menu | Dismiss autocomplete menu |

**Note:** `Tab` is reserved for snippet expansion, not completion selection!

## File Navigation

### Jump Between Files
| Key | Command | Description |
|-----|---------|-------------|
| `gf` | Go to File | Open file path under cursor |
| `Ctrl-o` | Jump Back | Return to previous location |
| `Ctrl-i` | Jump Forward | Go forward in jump list |
| `Ctrl-^` | Toggle Files | Switch between current and previous file |

### Marks (Bookmarks)
| Key | Command | Description |
|-----|---------|-------------|
| `ma` | Set Mark | Set local mark 'a' (use a-z) |
| `'a` | Go to Mark | Jump to mark 'a' |
| `mA` | Set Global Mark | Set global mark 'A' (use A-Z, works across files) |
| `'A` | Go to Global Mark | Jump to global mark 'A' from any file |

### Buffers
| Command | Description |
|---------|-------------|
| `:ls` | List all open buffers |
| `:b#` | Go to previous buffer |
| `:b<number>` | Go to buffer by number |
| `:b<name>` | Go to buffer by name (supports tab completion) |

### File Operations
| Command | Description |
|---------|-------------|
| `:e` or `:edit` | Reload current file |
| `:e!` | Reload current file and discard unsaved changes |
| `:w` | Save file |
| `:w!` | Force save file |

### Workflow Example
1. Set a mark before navigating: `ma`
2. Jump to file under cursor: `gf`
3. Return to mark: `'a` or just use `Ctrl-o`

## Search & Replace

### Search Navigation
| Key | Command | Description |
|-----|---------|-------------|
| `/pattern` | Search Forward | Search for pattern in document |
| `?pattern` | Search Backward | Search backwards for pattern |
| `n` | Next Match | Jump to next search result |
| `N` | Previous Match | Jump to previous search result |
| `*` | Search Word Forward | Search word under cursor (forward) |
| `#` | Search Word Backward | Search word under cursor (backward) |
| `/<Enter>` | Repeat Search | Repeat last search forward |
| `?<Enter>` | Repeat Backward | Repeat last search backward |

### Search Tips
- Press `/` then type your search term, then `Enter`
- Use `n` and `N` to cycle through all matches
- `*` is super useful - just put cursor on a word and press it!
- Clear search highlighting: `:noh` or `:nohlsearch`

## gh-dash Keybindings (inside dashboard)

### Navigation
| Key | Command |
|-----|---------|
| `1`, `2`, `3`, `4` | Switch tabs |
| `j`/`k` or `↓`/`↑` | Move up/down |
| `g`/`G` | Top/Bottom |
| `Ctrl+d`/`Ctrl+u` | Page down/up |

### Actions
| Key | Command |
|-----|---------|
| `Enter` | View details |
| `o` | Open in browser |
| `c` | Checkout PR |
| `d` | View diff |
| `r` | Refresh |
| `C` | Comment |
| `A` | Approve PR |
| `X` | Request changes |
| `/` | Search |
| `?` | Toggle help |
| `q` | Quit |

## Neogit Keybindings (inside Neogit)

### Basic
| Key | Command |
|-----|---------|
| `?` | Show help |
| `q` | Quit |
| `Tab` | Toggle section |
| `Enter` | Open/Edit |

### Staging
| Key | Command |
|-----|---------|
| `s` | Stage file/hunk |
| `u` | Unstage file/hunk |
| `S` | Stage all |
| `U` | Unstage all |

### Committing
| Key | Command |
|-----|---------|
| `c` | Commit menu |
| `cc` | Commit |
| `ca` | Amend commit |

### Other
| Key | Command |
|-----|---------|
| `p` | Push |
| `P` | Pull |
| `b` | Branch menu |
| `l` | Log |
| `d` | Diff |

## Diffview Commands

### Commands
| Command | Description |
|---------|-------------|
| `:DiffviewOpen` | Open diff view |
| `:DiffviewClose` | Close diff view |
| `:DiffviewFileHistory` | File history for all files |
| `:DiffviewFileHistory %` | Current file history |

## Octo (GitHub) Commands

| Command | Description |
|---------|-------------|
| `:Octo pr list` | List pull requests |
| `:Octo pr create` | Create new PR |
| `:Octo pr checkout <num>` | Checkout PR |
| `:Octo issue list` | List issues |
| `:Octo review start` | Start PR review |

## Gitsigns (automatic, shows in sign column)
- Git changes shown automatically
- Inline blame after 300ms delay

## Quick Access
View this file anytime: `:e ~/.config/nvim/KEYBINDINGS.md`
