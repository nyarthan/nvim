local M = {}

M.setup = function()
  require('formatter').setup({
    logging = true,
    log_level = vim.log.levels.WARN,
    filetype = {
      lua = {
        require('formatter.filetypes.lua').stylua,
      },
    },
  })
end

local augroup = vim.api.nvim_create_augroup('Formatting', {})

M.on_attach = function(bufnr)
  vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
  vim.api.nvim_create_autocmd('BufWritePost', {
    group = augroup,
    buffer = bufnr,
    callback = U.make_cmd('FormatWriteLock'),
  })
end

return M
