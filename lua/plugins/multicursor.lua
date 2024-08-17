return {
  "mg979/vim-visual-multi",
  init = function()
    vim.g.VM_default_mappings = 0
    vim.g.VM_maps = {
      ["Find Under"] = "",
      ["Find Subword Under"] = "",
    }
  end,
  config = function()
    vim.keymap.set("n", "<leader>d", "<Plug>(VM-Find-Under)")
    vim.keymap.set("v", "<leader>d", "<Plug>(VM-Find-Subword-Under)")
  end,
}
