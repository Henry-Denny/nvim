return {
  'kylechui/nvim-surround',
  version = '*',
  event = 'VeryLazy',
  config = function()
    ---@diagnostic disable-next-line
    require('nvim-surround').setup {
      keymaps = {
        insert = '<C-g>z',
        insert_line = 'g<C-g>gZ',
        normal = 'gz',
        normal_cur = 'gZ',
        normal_line = 'gzgz',
        normal_cur_line = 'gZgZ',
        visual = 'gz',
        visual_line = 'gZ',
        delete = 'gzd',
        change = 'gzc',
      },
    }
  end,
}
