-- Code
vim.opt.syntax='on'
vim.opt.termguicolors=true
vim.opt.cursorline=true
vim.opt.background='dark'

-- yank
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300
    })
  end
})
