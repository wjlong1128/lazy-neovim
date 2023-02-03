vim.g.bookmark_save_per_working_dir = 1
vim.g.bookmark_auto_save = 1

local state, telescope = pcall(require, "telescope")

if state then
  telescope.load_extension("vim_bookmarks")
end
