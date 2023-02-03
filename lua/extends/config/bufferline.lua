local state, bufferline = pcall(require, "bufferline")

if not state then
  return
end

bufferline.setup({
  options = {
    separator_style = "slant",
    offsets = {
      {
        filetype = "NvimTree",
        text = "File Explorer",
        text_align = "left",
        separator = true,
      },
    },
  },
})
