-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.api.nvim_create_autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0",
})

vim.api.nvim_create_autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=10",
})

vim.api.nvim_create_autocmd({ "VimEnter", "BufNewFile", "BufReadPost" }, {
  command = ":silent! call HardMode()",
})
