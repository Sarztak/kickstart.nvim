return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate', -- only runs on install/update
  config = function()
    local filetypes = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc' }
    require('nvim-treesitter').setup {
      ensure_installed = filetypes,
      auto_install = false,
      highlight = { enable = true },
    }
    vim.api.nvim_create_autocmd('FileType', {
      pattern = filetypes,
      callback = function() vim.treesitter.start() end,
    })
  end,
}
