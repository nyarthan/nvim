local M = {}

M.setup = function()
  local lsp_config = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  ---@diagnostic disable-next-line: unused-local
  local function on_attach(client, bufnr)
    require('nyarthan.formatter').on_attach(bufnr)

    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    require('nyarthan.keymaps').lsp(bufnr)
  end

  lsp_config['lua_ls'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = require('nyarthan.lsp.settings.lua_ls'),
  })

  lsp_config['tsserver'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })

  lsp_config['eslint'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
  })
end

return M
