vim.opt.relativenumber = true

vim.api.nvim_create_autocmd('TermOpen', { command = 'setlocal nonumber norelativenumber' })
vim.api.nvim_create_autocmd({ 'TermOpen', 'BufEnter' }, {
  pattern = { '*' },
  callback = function()
    if vim.opt.buftype:get() == 'terminal' then
      vim.cmd ':startinsert'
    end
  end,
})
