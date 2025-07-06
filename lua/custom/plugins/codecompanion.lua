return {
  'olimorris/codecompanion.nvim',
  enabled = false,
  -- config = true,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
  },
  config = function()
    require('codecompanion').setup {
      adapters = {
        gemini = {
          -- Your Google AI API key
          api_key = os.getenv 'NVIM_GOOGLE_API_KEY',
          -- Specify the model to use
          model = 'gemini-2.5-pro',
        },
      },
      strategies = {
        chat = {
          adapter = 'gemini',
        },
        inline = {
          adapter = 'gemini',
        },
        agent = {
          adapter = 'gemini',
        },
      },
    }
  end,
}
