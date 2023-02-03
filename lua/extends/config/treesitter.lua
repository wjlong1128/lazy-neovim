local state, tree_config = pcall(require, 'nvim-treesitter.configs')
if not state then return end
tree_config.setup {
  ensure_installed = { "c", "lua", "vim", "help" },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
