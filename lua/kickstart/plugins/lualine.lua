return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup {
      options = {
        disabled_filtypes = { statusline = { 'dashboard', 'alpha', 'ministarter' } },
      },
      sections = {
        lualine_b = {
          'branch',
          'diff',
        },
        lualine_c = {
          function()
            return vim.uv.cwd()
          end,
          {
            'diagnostics',
            symbols = {
              error = '  ',
              warn = ' ',
              hint = ' ',
              info = ' ',
            },
          },
          { 'filetype', icon_only = true, separator = '', padding = { left = 1, right = 0 } },
          {
            function()
              local cwd = vim.uv.cwd()
              local filepath = vim.fn.expand '%'
              if string.sub(filepath, 1, #cwd) == cwd then
                return string.sub(filepath, #cwd + 2)
              end
              return filepath
            end,
          },
        },
        lualine_z = {
          { 'location', padding = { left = 0, right = 1 } },
          function()
            return ' ' .. os.date '%R'
          end,
        },
      },
      extensions = { 'neo-tree', 'lazy' },
    }
  end,
}
