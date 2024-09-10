----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

---- Leader key was set in `options.lua`, leader key must be loaded before lazy

map("n", "<leader>nh", ":noh<CR>", { desc = "Clear search highlights" })

---- Window management
map("n", "<leader>s=", "<C-w>v", { desc = "Split window vertically" })
map("n", "<leader>s-", "<C-w>s", { desc = "Split window horizontally" })
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
-- map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" })
-- map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
