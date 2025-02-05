-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- delete without yanking
vim.keymap.set("x", "<leader>P", [["_dP]])

--- behave like other capitals
vim.keymap.set("n", "Y", "y$")

--- keeping it centered
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

-- make file executable
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })

--- moving text
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")

-- open tmux sessionizer (like a real chad)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tms<CR>")

-- Fugitive
vim.keymap.set("n", "<leader>gg", ":Git<CR>")
vim.keymap.set("n", "<leader>gp", ":Git push<CR>")
vim.keymap.set("n", "<leader>gP", ":Git pull --rebase<CR>")
vim.keymap.set("n", "<leader>gd", ":Git diff<CR>")
vim.keymap.set("n", "<leader>gl", ":Git log<CR>")

-- CodeCompanion
vim.keymap.set("n", "<leader>at", ":CodeCompanionChat<CR>")
vim.keymap.set("v", "<leader>am", ":CodeCompanionActions<CR>")
vim.keymap.set("n", "<leader>ac", ":CodeCompanionCmd")

-- Harpoon
vim.keymap.set("n", "<C-h>", function()
  require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<C-j>", function()
  require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<C-k>", function()
  require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<C-l>", function()
  require("harpoon"):list():select(1)
end)
vim.keymap.set("n", "<C-p>", function()
  require("harpoon"):list():prev()
end)
vim.keymap.set("n", "<C-n>", function()
  require("harpoon"):list():next()
end)
vim.keymap.set("n", "<C-o>", function()
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)
