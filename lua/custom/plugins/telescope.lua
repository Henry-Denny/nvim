return {
  'nvim-telescope/telescope-file-browser.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    local telescope = require 'telescope'
    telescope.setup {
      extensions = {
        file_browser = {
          -- disables netrw and use telescope-file-browser in its place
          hijack_netrw = true,
        },
      },
    }

    telescope.load_extension 'file_browser'

    local colors = require('catppuccin.palettes').get_palette()
    local TelescopeColor = {
      TelescopeMatching = { fg = colors.flamingo },
      TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

      TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
      TelescopePromptPrefix = { bg = colors.surface0 },
      TelescopePromptNormal = { bg = colors.surface0 },
      TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },

      TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
      TelescopePreviewNormal = { bg = colors.mantle },
      TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },

      TelescopeResultsTitle = { fg = colors.mantle },
      TelescopeResultsNormal = { bg = colors.mantle },
      TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
    }

    for hl, col in pairs(TelescopeColor) do
      vim.api.nvim_set_hl(0, hl, col)
    end

    -- Keymaps

    -- vim.api.nvim_set_keymap(
    --   "n",
    --   "<space>sb",
    --   ":Telescope file_browser<CR>",
    --   { noremap = true }
    -- )

    -- open file_browser with the path of the current buffer
    vim.api.nvim_set_keymap('n', '<space>sb', ':Telescope file_browser path=%:p:h select_buffer=true<CR>', { noremap = true })
  end,
}
