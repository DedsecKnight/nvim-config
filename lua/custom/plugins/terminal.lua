return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      require('toggleterm').setup()
      vim.keymap.set('n', '<space>tt', '<CMD>ToggleTerm direction=float<CR>', { desc = 'Open floating term' })
    end,
  },
}
