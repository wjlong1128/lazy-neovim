local linux_os = function(list)
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = list,
    sync_install = true,
    auto_install = true,
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    }
  }
end

local windows_os = function(list)
  -- windows打开开发者模式 安装choco gcc
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = list,
    sync_install = true,
    auto_install = true,
    highlight = {
      enable = true,
      disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
          return true
        end
      end,
      additional_vim_regex_highlighting = false,
    },
    indent = {
      enable = true
    }
  }
end

local Sitter = {
  langlist = function(is_linux, list)
    if is_linux then
      linux_os(list);
    else
      windows_os(list);
    end
  end
}


return Sitter
