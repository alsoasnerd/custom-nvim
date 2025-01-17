-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Set the current working directory to the first argument
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local first_arg = vim.fn.argv(0) -- Get the first argument
    if first_arg and vim.fn.isdirectory(first_arg) == 0 then
      first_arg = vim.fn.fnamemodify(first_arg, ":h") -- Get the parent directory if it's a file
    end
    if first_arg and vim.fn.isdirectory(first_arg) == 1 then
      vim.cmd("cd " .. vim.fn.fnameescape(first_arg)) -- Change to the directory
    end
  end,
})
