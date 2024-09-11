-----------------------------------------------------------
-- Color scheme
----------------------------------------------------------

return {
  "projekt0n/github-nvim-theme",
  lazy = false,
  priority = 1000,
  config = function()
    require("github-theme").setup {
      options = {
        styles = {
          comments = "italic",
          -- keywords = "bold",
          -- types = "italic,bold",
        },
      },
    }
    vim.cmd "colorscheme github_light"
  end,
}
