return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  init = false,
  dependencies = {
    'echasnovski/mini.icons',
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local alpha = require 'alpha'
    local dashboard = require 'alpha.themes.dashboard'
    local logo = [[ 
        ██████╗ ███████╗██████╗ ███████╗███████╗ ██████╗██╗  ██╗███╗   ██╗██╗ ██████╗ ██╗  ██╗████████╗
        ██╔══██╗██╔════╝██╔══██╗██╔════╝██╔════╝██╔════╝██║ ██╔╝████╗  ██║██║██╔════╝ ██║  ██║╚══██╔══╝
        ██║  ██║█████╗  ██║  ██║███████╗█████╗  ██║     █████╔╝ ██╔██╗ ██║██║██║  ███╗███████║   ██║   
        ██║  ██║██╔══╝  ██║  ██║╚════██║██╔══╝  ██║     ██╔═██╗ ██║╚██╗██║██║██║   ██║██╔══██║   ██║   
        ██████╔╝███████╗██████╔╝███████║███████╗╚██████╗██║  ██╗██║ ╚████║██║╚██████╔╝██║  ██║   ██║   
        ╚═════╝ ╚══════╝╚═════╝ ╚══════╝╚══════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝ ╚═╝  ╚═╝   ╚═╝   
    ]]
    dashboard.section.header.val = vim.split(logo, '\n')
    dashboard.section.buttons.val = {
      dashboard.button('e', '   New file', ':ene <BAR> startinsert <CR>'),
      dashboard.button('f', '   Find file', ':Telescope find_files<CR>'),
      dashboard.button('g', '   Live grep', ':Telescope live_grep<CR>'),
      dashboard.button('r', '   Recent', ':Telescope oldfiles<CR>'),
      dashboard.button('s', '   Config files', '<leader>sn'),
      dashboard.button('q', '   Quit Neovim', ':qa<CR>'),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = 'AlphaButtons'
      button.opts.hl_shortcut = 'AlphaShortcut'
    end
    dashboard.section.header.opts.hl = 'AlphaHeader'
    dashboard.section.buttons.opts.hl = 'AlphaButtons'
    dashboard.section.footer.opts.hl = 'AlphaFooter'
    dashboard.opts.layout[1].val = 8
    alpha.setup(dashboard.config)
  end,
}
