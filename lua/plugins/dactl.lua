return {
  "DedsecKnight/dactl.nvim",
  -- dir = "~/dev/nvim-plugins/dactl.nvim/",
  config = function()
    require("dactl").setup({
      trd_path = os.getenv("HOME") .. "/competitive_programming/dactl/content",
    })
  end,
  dependencies = {
    "rcarriga/nvim-notify",
    "nvim-lua/plenary.nvim",
  },
}
