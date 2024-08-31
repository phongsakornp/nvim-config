-----------------------------------------------------------
-- fast-cursor-move configuration file
----------------------------------------------------------

-- Plugin: fast-cursor-move
-- url: https://github.com/xiyaowong/fast-cursor-move.nvim

-- This plugins help fix vscode-neovim fold/unfold issues
-- https://github.com/vscode-neovim/vscode-neovim/issues/58
return {
  "dgokcin/fast-cursor-move.nvim",
  event = "BufRead",
  vscode = true,
  config = function()
      vim.defer_fn(function()
          require("fast-cursor-move").setup({
              enable_acceleration = false,
          })
      end, 500)
  end,
}
