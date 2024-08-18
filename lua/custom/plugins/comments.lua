return {
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup()
      vim.keymap.set('v', '<C-_>', 'gc', { desc = 'Comment', remap = true })
      vim.keymap.set('n', '<C-_>', 'gcc', { desc = 'Comment', remap = true })
    end,
  },
  {
    'folke/ts-comments.nvim',
    opts = {},
    event = 'VeryLazy',
    enabled = vim.fn.has 'nvim-0.10.0' == 1,
  },
}
