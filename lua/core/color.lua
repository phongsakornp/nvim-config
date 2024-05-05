-----------------------------------------------------------
-- Color schemes configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

-- Neovim UI color scheme.
-- Add the selected color scheme in the `require` values below.
-- Current available color schemes: onedark.
local status_ok, color_scheme = pcall(require, 'onedark')
if not status_ok then
  return
end

-- onedark configuration
-- https://github.com/navarasu/onedark.nvim#default-configuration
require('onedark').setup {
    style = 'darker'
}
require('onedark').load()