return {

  'leoluz/nvim-dap-go',
  dependencies = {
    'mfussenegger/nvim-dap',
    'theHamsta/nvim-dap-virtual-text',
    'rcarriga/nvim-dap-ui',
    'nvim-neotest/nvim-nio',
  },
  config = function()
    local dap = require 'dap'
    local dapui = require 'dapui'

    require('dap-go').setup()
    require('dapui').setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    vim.keymap.set('n', '<F5>', function()
      dap.continue()
    end)
    vim.keymap.set('n', '<F10>', function()
      dap.step_over()
    end)
    vim.keymap.set('n', '<F11>', function()
      dap.step_into()
    end)
    vim.keymap.set('n', '<F12>', function()
      dap.step_out()
    end)
    vim.keymap.set('n', '<C-b>', function()
      dap.toggle_breakpoint()
    end)
    vim.keymap.set({ 'n', 'v' }, '<Leader>dh', function()
      require('dap.ui.widgets').hover()
    end)
    vim.keymap.set({ 'n', 'v' }, '<Leader>dp', function()
      require('dap.ui.widgets').preview()
    end)
  end,
}
