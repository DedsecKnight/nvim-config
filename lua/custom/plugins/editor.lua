local default_theme = 'tokyonight'
local theme_rice_lookup = {
  cristina = 'rose-pine-moon',
  brenda = 'everforest',
  daniela = 'catppuccin',
  cynthia = 'kanagawa-dragon',
  silvia = 'gruvbox',
  melissa = 'onenord',
  isabel = 'onedark',
}

local get_rice_themename = function()
  local file = io.open(os.getenv 'HOME' .. '/.config/bspwm/.rice', 'rb')
  if not file then
    return default_theme
  end
  local rice_name = file:read()
  file:close()
  if theme_rice_lookup[rice_name] ~= nil then
    return theme_rice_lookup[rice_name]
  end
  return default_theme
end

local load_colorscheme = function()
  local themename = get_rice_themename()
  vim.cmd.colorscheme(themename)
end

return {
  {
    'akinsho/bufferline.nvim',
    config = function()
      require('bufferline').setup {
        options = {
          diagnostics = 'nvim_lsp',
          always_show_bufferline = false,
          diagnostics_indicator = function(_, _, diag)
            local icons = {
              Error = ' ',
              Warn = ' ',
              Hint = ' ',
              Info = ' ',
            }
            local ret = (diag.error and icons.Error .. diag.error .. ' ' or '') .. (diag.warning and icons.Warn .. diag.warning or '')
            return vim.trim(ret)
          end,
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'Neo-tree',
              highlight = 'Directory',
              text_align = 'left',
            },
          },
          separator_style = 'slant',
        },
      }
      load_colorscheme()
    end,
  },
  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {
      -- add any options here
      lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
          ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
          ['vim.lsp.util.stylize_markdown'] = true,
          ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
        },
      },
      -- you can enable a preset for easier configuration
      presets = {
        bottom_search = true, -- use a classic bottom cmdline for search
        command_palette = true, -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false, -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = false, -- add a border to hover docs and signature help
      },
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      'MunifTanjim/nui.nvim',
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      'rcarriga/nvim-notify',
    },
  },
}
