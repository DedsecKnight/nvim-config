return {
  { 'JoosepAlviste/nvim-ts-context-commentstring' },
  {
    'numToStr/Comment.nvim',
    opts = {},
    config = function()
      require('Comment').setup {
        pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
      }
      vim.keymap.set('v', '<C-_>', 'gc', { desc = 'Comment', remap = true })
      vim.keymap.set('n', '<C-_>', 'gcc', { desc = 'Comment', remap = true })
      vim.keymap.set('v', '<C-/>', 'gc', { desc = 'Comment', remap = true })
      vim.keymap.set('n', '<C-/>', 'gcc', { desc = 'Comment', remap = true })
    end,
  },
}
