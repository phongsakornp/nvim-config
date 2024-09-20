-----------------------------------------------------------
-- Syntax tree configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter
-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart

return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  opts = {
    highlight = {
      -- enable syntax highlighting
      enable = true,
    },

    indent = {
      enable = true,
    },

    autotag = {
      enable = true,
    },

    ensure_installed = {
      "astro",
      "bash",
      "c",
      "cpp",
      "html",
      "css",
      "javascript",
      "json",
      "typescript",
      "tsx",
      "lua",
      "python",
      "rust",
      "vim",
      "vimdoc",
      "yaml",
      "markdown",
      "markdown_inline",
      "dockerfile",
      "gitignore",
      "query",
      "graphql",
    },

    -- A list of parser names, or "all"
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-n>",
        node_incremental = "<C-n>",
        scope_incremental = false,
        node_decremental = "<C-r>",
      },
    },
  },
  config = function(_, opts)
    local treesitter = require "nvim-treesitter.configs"
    treesitter.setup(opts)
  end,
}
