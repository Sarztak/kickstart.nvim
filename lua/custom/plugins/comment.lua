return {
  'numToStr/Comment.nvim',
  opts = {
    pre_hook = function(ctx)
      if vim.bo.filetype == 'ocaml' then
        return '(*%s*)'
      end
    end,
  },
  lazy = false,
}
