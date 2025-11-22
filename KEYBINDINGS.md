# Neovim Keybindings Cheat Sheet

## Leader Key
- Leader: `<space>` (default)

## Which-Key
Press `<space>` and wait ~1 second to see available keybindings!
- Shows what keys you can press next
- Press the shown key to execute or see more options
- Example: `<space>` → `g` → shows all git commands

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
| `<leader>gd` | Go to Definition | Jump to definition |
| `<leader>gr` | References | Show references |
| `<leader>ca` | Code Actions | Show code actions |
| `<space>rn` | Rename | Rename symbol |
| `<leader>e` | Diagnostics | Open diagnostic float |
| `[d` | Previous Diagnostic | Go to previous error |
| `]d` | Next Diagnostic | Go to next error |

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
