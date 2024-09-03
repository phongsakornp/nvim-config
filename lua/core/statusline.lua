-----------------------------------------------------------
-- Status line configuration file
-----------------------------------------------------------

-- lualine configuration
-- https://github.com/nvim-lualine/lualine.nvim

local status_ok, color_scheme = pcall(require, "lualine")
if not status_ok then
  return
end

require("lualine").setup {
  options = {
    theme = "onedark",
  },
}

