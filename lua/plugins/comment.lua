-----------------------------------------------------------
-- Comment configuration file
----------------------------------------------------------

-- Plugin: Comment
-- url: https://github.com/numToStr/Comment.nvim

return {
  'numToStr/Comment.nvim',
  opts = {
  },
  config = function(_, opts)
    require("Comment").setup(opts)
  end,
}
