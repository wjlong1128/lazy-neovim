vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
local state,tree = pcall(require,"nvim-tree")
if not state then return end;
tree.setup({
  sort_by = "case_sensitive",
  actions = {
     open_file = {quit_on_open = true}
  },
  view = {
    width = 25,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
