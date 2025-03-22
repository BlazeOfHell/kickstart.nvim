return {
  'SuperBo/fugit2.nvim',
  event = 'VeryLazy',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    'nvim-telescope/telescope-fzf-native.nvim',
  },
  config = function()
    require('fugit2').setup()
  end,
  keys = {
    { '<M-2>', '<cmd>Fugit2<cr>', desc = 'Fugit2' },
  },
}
