local state, neo = pcall(require,'neosolarized')
if not state then return end
require('neosolarized').setup({
    comment_italics = true,
    background_set = false,
})
