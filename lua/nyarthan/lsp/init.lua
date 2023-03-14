local M = {}

M.setup = function()
  local lsp_config = require('lspconfig')
  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  local icons = require('nyarthan.icons')

  local signs = {
    {
      name = 'DiagnosticSignError',
      text = icons.diagnostics.error,
    },
    {
      name = 'DiagnosticSignWarn',
      text = icons.diagnostics.warning,
    },
    {
      name = 'DiagnosticSignHint',
      text = icons.diagnostics.hint,
    },
    {
      name = 'DiagnosticSignInfo',
      text = icons.diagnostics.info,
    },
  }

  ---@diagnostic disable-next-line: unused-local
  local function on_attach(client, bufnr)
    require('nyarthan.formatter').on_attach(bufnr)

    for _, sign in ipairs(signs) do
      vim.fn.sign_define(
        sign.name,
        { texthl = sign.name, text = sign.text, numhl = '' }
      )
    end

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

  lsp_config['jsonls'].setup({
    on_attach = on_attach,
    capabilities = capabilities,
    settings = require('nyarthan.lsp.settings.jsonls'),
  })
end

return M
