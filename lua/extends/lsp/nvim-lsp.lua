local on_attach = function(_, bufnr)
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  vim.api.nvim_create_autocmd('BufWritePre', {
    buffer = bufnr,
    callback = function()
      vim.lsp.buf.format()
    end
  })
end


local lsp_config = {
  group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
  on_attach = function(_, bufnr)
    on_attach(_, bufnr)
  end
}

local lspconfig = require("lspconfig")

require("mason-lspconfig").setup_handlers({
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup(lsp_config)
  end,
  -- Next, you can provide targeted overrides for specific servers.
  --  sumneko_lua = function()
  --    require('lspconfig').sumneko_lua.setup(vim.tbl_extend('force', lsp_config, {
  --      settings = {
  --        Lua = {
  --          diagnostics = {
  --            globals = { 'vim' }
  --          }
  --        }
  --      }
  --    }))
  --  end,
})
