-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set
vim.keymap.del("n", "<leader>-")
vim.keymap.del("n", "<C-Down>")
vim.keymap.del("n", "<C-Up>")
map("v", "<leader>/", "gc", { desc = "Comment", remap = true })
map("n", "<leader>/", "gcc", { desc = "Comment", remap = true })
map("v", "<A-Down>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-Up>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })
map("n", "<space>-", "<CMD>Oil --float<CR>", { desc = "Open parent directory" })
map("n", "<tab>", "]b", { desc = "Next tab", remap = true })
map("n", "<S-tab>", "[b", { desc = "Prev tab", remap = true })
map("n", "<leader>r", "<cmd>RunCode<CR>", { desc = "Run code" })
map("n", "<C-n>", "<leader>e", { desc = "Open directory tree", remap = true })
map("n", "<C-Down>", "<Plug>(VM-Add-Cursor-Down)")
map("n", "<C-Up>", "<Plug>(VM-Add-Cursor-Up)")
