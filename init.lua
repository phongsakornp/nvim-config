---- Read this if you forget or confuse
---- > https://neovim.io/doc/user/lua-guide.html

---- Config VSCode with Neovim
---- https://github.com/vscode-neovim/vscode-neovim?tab=readme-ov-file#neovim-configuration
if vim.g.vscode then
  ---- VSCode extension
  require "core/options"
  require "core/lazy"
  require "core/autocmds"
  require "vscode/core"
else
  --- Ordinary Neovim
  require "core/options"
  require "core/keymaps"
  require "core/lazy"
  require "core/autocmds"
  require "core/color"
  require "core/statusline"
end
