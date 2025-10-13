-----------------------------------------------------------
-- Color scheme
----------------------------------------------------------

return {
  "wnkz/monoglow.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd "colorscheme monoglow"
  end,
}
-- return {
--   "projekt0n/github-nvim-theme",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("github-theme").setup {
--       options = {
--         styles = {
--           comments = "italic",
--           -- keywords = "bold",
--           -- types = "italic,bold",
--         },
--       },
--     }
--     vim.cmd "colorscheme github_dark"
--   end,
-- }
