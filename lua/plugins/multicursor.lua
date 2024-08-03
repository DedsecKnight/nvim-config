return {
  {
    "smoka7/multicursors.nvim",
    event = "VeryLazy",
    dependencies = { "nvimtools/hydra.nvim" },
    opts = {},
    cmd = { 'MCstart', 'MCvisual', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {
      {
        mode = { 'v', 'n' },
        '<Leader>m',
        '<cmd>MCstart<cr>',
        desc = "Create a selection for selected text or word under cursor",
      },
    },
  }
}
