-- Ensure Neovim can find binaries in common locations
vim.env.PATH = vim.env.PATH .. ":/usr/local/go/bin:/Users/chz/.local/bin:/opt/homebrew/bin:/opt/homebrew/sbin"

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

