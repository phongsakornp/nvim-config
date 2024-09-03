-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: lazy.nvim
-- URL: https://github.com/folke/lazy.nvim
--

-- Bootstrap lazy.nvim
-- https://github.com/folke/lazy.nvim#-installation
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

-- Use a protected call so we don't error out on first use
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
  return
end

-- Start setup
lazy.setup {
  spec = {
    -- https://github.com/folke/lazy.nvim#-structuring-your-plugins

    --------------------------------
    -- Simple plugins
    -- Plugins which have not much configurations.
    -----------------------------
    {
      -- https://github.com/nvim-lua/plenary.nvim
      "nvim-lua/plenary.nvim",
    },

    {
      -- https://github.com/christoomey/vim-tmux-navigator
      "christoomey/vim-tmux-navigator",
    },

    -- Colorscheme:
    {
      "navarasu/onedark.nvim",
      lazy = false, -- make sure we load this during startup if it is your main colorscheme
      priority = 1000, -- make sure to load this before all the other start plugins
    },

    --------------------------------
    -- Extra plugins
    -- Plugins which have their own file.
    --------------------------------
    { import = "plugins" },
    { import = "plugins.lsp" },
  },

  checker = {
    enabled = true,
    notify = false,
  },

  change_detection = {
    notify = false, -- silent the changed
  },
}
