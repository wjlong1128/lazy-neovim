require('basic')
require('maps')

local is_linux_env = vim.fn.has('win32') == 0 or vim.fn.has('win64') == 0
require('extends').env(is_linux_env)
