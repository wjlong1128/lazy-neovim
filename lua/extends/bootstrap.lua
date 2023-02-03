local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "git@github.com:folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local state,plugins = pcall(require,'extends.plugins')

if not state then return end

local opts = {
  git = {
    url_format = "git@github.com:%s.git"
  }
}  

require("lazy").setup(plugins, opts)
require('./manage')
