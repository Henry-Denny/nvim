-- Where am I?
vim.keymap.set('n', 'J', 'mzJ`z')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>cD', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

-- Moving between windows
vim.cmd.tnoremap('<C-h>', [[<C-\><C-N><C-w>h]])
vim.cmd.tnoremap('<C-j>', [[<C-\><C-N><C-w>j]])
vim.cmd.tnoremap('<C-k>', [[<C-\><C-N><C-w>k]])
vim.cmd.tnoremap('<C-l>', [[<C-\><C-N><C-w>l]])

-- More terminal keymaps
vim.cmd.tnoremap('<C-w>', [[<C-\><C-N><C-w>]])
