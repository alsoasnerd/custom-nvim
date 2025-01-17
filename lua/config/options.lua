-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Number of lines
vim.opt.nu = true
vim.opt.relativenumber = true

-- Tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Identation
vim.opt.smartindent = true

-- Line wrap
vim.opt.wrap = false

-- Backup, swap and undo
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Terminal GUI colorscheme
vim.opt.termguicolors = true

-- File Naming and Sign Column
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Set column position
vim.opt.colorcolumn = "80"
