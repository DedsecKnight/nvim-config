return {
  {
    'JoosepAlviste/nvim-ts-context-commentstring',
    main = 'ts_context_commentstring',
    init = function()
      -- Skip the deprecated module loading and the legacy CursorHold autocmd
      -- that errors in buffers without a treesitter parser (e.g. oil://).
      vim.g.skip_ts_context_commentstring_module = true
    end,
    opts = {
      enable_autocmd = false,
    },
  },
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
