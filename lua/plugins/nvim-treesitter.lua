-----------------------------------------------------------
-- Treesitter configuration file
----------------------------------------------------------

-- Plugin: nvim-treesitter
-- url: https://github.com/nvim-treesitter/nvim-treesitter
-- See: https://github.com/nvim-treesitter/nvim-treesitter#quickstart

return { 
  'nvim-treesitter/nvim-treesitter', 
  build = ':TSUpdate',
  opts = {
    -- A list of parser names, or "all"
    ensure_installed = {
      'bash', 'c', 'cpp', 'css', 'html', 'javascript', 'json', 'lua', 'python',
      'rust', 'typescript', 'vim', 'vimdoc', 'yaml',
    },
    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,
    highlight = {
      -- `false` will disable the whole extension
      enable = true,
    },
  },
  config = function(_, opts)
    require("nvim-treesitter").setup(opts)
  end, 
}