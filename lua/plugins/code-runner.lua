return {
  {
    "CRAG666/code_runner.nvim",
    lazy = false,
    config = function()
      require("code_runner").setup({
        mode = "term",
        hot_reload = true,
        term = {
          position = "bot",
          size = 16,
        },
        startinsert = true,
        before_run_filetype = function()
          vim.cmd(":w")
        end,
        filetype = {
          python = "python3 -u",
          cpp = {
            "cd $dir &&",
            "g++ -std=c++20 -Wshadow -Wall $fileName -DLLOCAL -fsanitize=address -fsanitize=undefined -g -o",
            "$fileNameWithoutExt &&",
            "$dir/$fileNameWithoutExt",
          },
          java = {
            "cd $dir &&",
            "javac $fileName &&",
            "java $fileNameWithoutExt",
          },
          go = "go run",
        },
      })
    end,
  },
}
