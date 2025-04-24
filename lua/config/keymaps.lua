-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--

vim.keymap.set("n", "<leader>cD", ":cd %:p:h<CR>:pwd<CR>", { desc = "CD to file's directory" })
vim.keymap.set("n", "<leader>fp", "<cmd>Telescope projects<CR>", { desc = "Project Picker" })
