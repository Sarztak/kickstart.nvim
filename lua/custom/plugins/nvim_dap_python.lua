return {
  'mfussenegger/nvim-dap-python',
  config = function() require('dap-python').setup(vim.fn.exepath 'debug-adapter') end,
}
