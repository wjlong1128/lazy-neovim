require("toggleterm").setup {}

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- if vim.fn.has('win32') == 1 or vim.fn.has('win64') == 1 then
--   local powershell_options = {
--     shell = vim.fn.executable "powershell" == 1 and "powershell" or "pwsh",
--     shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
--     shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
--     shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
--     shellquote = "",
--     shellxquote = "",
--   }
--
--   for option, value in pairs(powershell_options) do
--     vim.opt[option] = value
--   end
-- end
