local set = vim.keymap.set
-- tree
set("n", ";e", ":NvimTreeToggle<CR>")

set("n", "<leader><space>", "<cmd>lua require('alternate-toggler').toggleAlternate()<CR>")

-- buffer

set("n", "<leader>;", ":BufferLineCycleNext<CR>")
set("n", "<leader>'", ":BufferLineCyclePrev<CR>")

local builtin = require("telescope.builtin")
set("n", "<leader>ff", builtin.find_files, {})
set("n", "<leader>fg", builtin.live_grep, {})
set("n", "<leader>fb", builtin.buffers, {})
set("n", "<leader>fh", builtin.help_tags, {})

set("n", "<space>fe", ":Telescope file_browser<CR>", { noremap = true })

-- Mark
set("n", "<space>fm", ":Telescope vim_bookmarks all<CR>")
set("n", "<space>fc", ":Telescope vim_bookmarks current_file<CR>")

-- makrkdown
set("n", "<C-p>", ":MarkdownPreviewToggle<CR>")

-- LSP finder - Find the symbol's definition
-- If there is no definition, it will instead be hidden
-- When you use an action in finder like "open vsplit",
-- you can use <C-t> to jump back
set("n", "gh", "<cmd>Lspsaga lsp_finder<CR>")

-- Code action
set({ "n", "v" }, "<leader>ca", "<cmd>Lspsaga code_action<CR>")

-- Rename all occurrences of the hovered word for the entire file
set("n", "gr", "<cmd>Lspsaga rename<CR>")

-- Rename all occurrences of the hovered word for the selected files
set("n", "gr", "<cmd>Lspsaga rename ++project<CR>")

-- Peek definition
-- You can edit the file containing the definition in the floating window
-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
-- It also supports tagstack
-- Use <C-t> to jump back
set("n", "gd", "<cmd>Lspsaga peek_definition<CR>")

-- Go to definition
set("n", "gd", "<cmd>Lspsaga goto_definition<CR>")

-- Show line diagnostics
-- You can pass argument ++unfocus to
-- unfocus the show_line_diagnostics floating window
set("n", "<leader>sl", "<cmd>Lspsaga show_line_diagnostics<CR>")

-- Show cursor diagnostics
-- Like show_line_diagnostics, it supports passing the ++unfocus argument
set("n", "<leader>sc", "<cmd>Lspsaga show_cursor_diagnostics<CR>")

-- Show buffer diagnostics
set("n", "<leader>sb", "<cmd>Lspsaga show_buf_diagnostics<CR>")

-- Diagnostic jump
-- You can use <C-o> to jump back to your previous location
set("n", "[e", "<cmd>Lspsaga diagnostic_jump_prev<CR>")
set("n", "]e", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- Toggle outline
set("n", "<leader>o", "<cmd>Lspsaga outline<CR>")

-- Hover Doc
-- If there is no hover doc,
-- there will be a notification stating that
-- there is no information available.
-- To disable it just use ":Lspsaga hover_doc ++quiet"
-- Pressing the key twice will enter the hover window
set("n", "K", "<cmd>Lspsaga hover_doc<CR>")

-- If you want to keep the hover window in the top right hand corner,
-- you can pass the ++keep argument
-- Note that if you use hover with ++keep, pressing this key again will
-- close the hover window. If you want to jump to the hover window
--  you should use the wincmd command "<C-w>w"
set("n", "K", "<cmd>Lspsaga hover_doc ++keep<CR>")

-- Call hierarchy
set("n", "<Leader>ci", "<cmd>Lspsaga incoming_calls<CR>")
set("n", "<Leader>co", "<cmd>Lspsaga outgoing_calls<CR>")

-- Floating terminal
set({ "n", "t" }, "<A-d>", "<cmd>Lspsaga term_toggle<CR>")
