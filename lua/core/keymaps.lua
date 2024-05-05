-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
    local options = { noremap=true, silent=true }
    if opts then
      options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Leader key was set in `options.lua`, leader key must be loaded before lazy

-- NvimTree
-- https://github.com/nvim-tree/nvim-tree.lua/wiki/Recipes#h-j-k-l-style-navigation-and-editing
-- https://github.com/nvim-tree/nvim-tree.lua/blob/master/doc/nvim-tree-lua.txt
map("n", "<leader>e", ":NvimTreeToggle<CR>", {silent = true, noremap = true})   -- open/close
map('n', '<leader>E', ':NvimTreeFindFile<CR>')                                  -- search file
map('n', '<leader>r', ':NvimTreeRefresh<CR>')                                   -- refresh

-- Telescope
require('telescope.builtin')
map('n', '<leader>ff', ":Telescope find_files<CR>", {})                        -- Fuzy find files in cwd
map('n', '<leader>fc', ":Telescope grep_string<CR>", {})                       -- Find string under cursor in cwd
map('n', '<leader>fg', ":Telescope live_grep<CR>", {})                         -- Find string in cwd
map('n', '<leader>fb', ":Telescope buffers<CR>", {})                           -- Find string in buffer
map('n', '<leader>fs', ":Telescope lsp_document_symbols<CR>", {})              -- Find symbol under cursor
map('n', '<leader>fh', ":Telescope help_tags<CR>", {})
