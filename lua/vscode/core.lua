-- Key Maps
-- https://code.visualstudio.com/docs/getstarted/keybindings
-- https://github.com/vscode-neovim/vscode-neovim?tab=readme-ov-file#vimscript
vim.g.mapleader = ';'

vim.keymap.set('n', '<leader>e', function ()
  -- vim.api.nvim_feedkeys('<leader>e', 'n', false)
  require('vscode-neovim').action('workbench.action.toggleSidebarVisibility')
end, { silent = true  })

vim.keymap.set('n', '<leader>E', function ()
  require('vscode-neovim').action('workbench.files.action.focusFilesExplorer')
end, { silent = true })

-- find in files, query: word under caret
-- https://github.com/vscode-neovim/vscode-neovim/issues/741#issuecomment-913923181
vim.keymap.set('n', '<leader>ff', function ()
  require('vscode-neovim').action(
    'workbench.action.findInFiles',
    { args = { query = vim.fn.expand('<cword>'), replace = ''} })
end, { silent = true })
