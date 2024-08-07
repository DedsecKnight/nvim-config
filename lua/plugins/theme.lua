local default_theme = "tokyonight"
local theme_rice_lookup = {
  cristina = "rose-pine-moon",
  brenda = "everforest",
  daniela = "catppuccin",
  cynthia = "kanagawa-dragon",
  silvia = "gruvbox",
  melissa = "nord",
}

local get_rice_themename = function()
  local file = io.open(os.getenv("HOME") .. "/.config/bspwm/.rice", "rb")
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

return {
  { "rose-pine/neovim", name = "rose-pine" },
  { "ellisonleao/gruvbox.nvim" },
  { "rebelot/kanagawa.nvim" },
  { "nordtheme/vim" },
  -- {
  --   "AlexvZyl/nordic.nvim",
  --   priority = 1000,
  --   config = function()
  --     require("nordic").load()
  --   end,
  -- },
  {
    "sainnhe/everforest",
    priority = 1000,
    config = function()
      vim.g.everforest_enable_italic = true
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = get_rice_themename(),
    },
  },
}
