return {
  {
    "davidgranstrom/nvim-markdown-preview",
    lazy = false,
  },
  {
    'MeanderingProgrammer/markdown.nvim',
    lazy = false,
    main = "render-markdown",
    opts = {},
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  }
}
