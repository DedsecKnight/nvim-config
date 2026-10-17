return {
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    config = function()
      require('catppuccin').setup {
        transparent_background = true,
        integrations = {
          notify = true,
        },
      }
    end,
  },
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup { transparent = true }
    end,
  },
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    config = function()
      local palette = require 'rose-pine.palette'
      require('rose-pine').setup {
        styles = {
          bold = true,
          italic = true,
          transparency = true,
        },
        highlight_groups = {
          NotifyBackground = {
            bg = palette.surface,
          },
        },
      }
    end,
  },
  { 'ellisonleao/gruvbox.nvim' },
  {
    'rebelot/kanagawa.nvim',
    config = function()
      require('kanagawa').setup {
        transparent = true,
        colors = {
          theme = {
            all = {
              ui = {
                bg_gutter = 'None',
              },
            },
          },
        },
      }
    end,
  },
  { 'rmehri01/onenord.nvim' },
  { 'nyoom-engineering/oxocarbon.nvim' },
  {
    'navarasu/onedark.nvim',
    config = function()
      require('onedark').setup {
        style = 'darker',
        lualine = {
          transparent = true,
        },
      }
    end,
  },
  {
    'sainnhe/everforest',
    priority = 1000,
    config = function()
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    'loctvl842/monokai-pro.nvim',
    priority = 1000,
    config = function()
      require('monokai-pro').setup {
        transparent_background = true,
        terminal_colors = false,
        background_clear = {
          'toggleterm',
          'telescope',
          'which-key',
          'notify',
          'neo-tree',
          'bufferline',
        },
      }
    end,
  },
  {
    'Mofiqul/dracula.nvim',
    config = function()
      require('dracula').setup {
        transparent_bg = true,
      }
    end,
  },
}
