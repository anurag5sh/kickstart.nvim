return {
  'pwntester/octo.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim', -- or 'ibhagwan/fzf-lua'
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
    require('octo').setup {
      use_local_fs = true,
      picker = 'telescope',
    }
  end,
}
