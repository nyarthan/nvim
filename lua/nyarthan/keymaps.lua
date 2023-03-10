local M = {}

M.setup = function()
  local key = U.make_key({ noremap = true, silent = true })

  -- move in insert mode
  key('i', '<c-h>', '<left>')
  key('i', '<c-j>', '<down>')
  key('i', '<c-k>', '<up>')
  key('i', '<c-l>', '<right>')

  -- switch windows
  key('n', '<c-h>', '<c-w>h')
  key('n', '<c-j>', '<c-w>j')
  key('n', '<c-k>', '<c-w>k')
  key('n', '<c-l>', '<c-w>l')

  -- open tree
  key('n', '<leader>e', U.make_cmd('NvimTreeToggle'))

  -- indent / dedent
  key('v', '<', '<gv')
  key('v', '>', '>gv')

  key('x', 'J', U.make_cmd("move '>+1<CR>gv-gv"))
  key('x', 'K', U.make_cmd("move '>-2<CR>gv-gv"))
  key('x', '<a-j>', U.make_cmd("move '>+1<CR>gv-gv"))
  key('x', '<a-k>', U.make_cmd("move '<-2<CR>gv-gv"))

  -- utilities
  key('n', '<leader>rr', U.make_cmd('luafile %'))
end

M.lsp = function(bufnr)
  local key = U.make_key({ noremap = true, silent = true, buffer = bufnr })
  key('n', 'gD', vim.lsp.buf.declaration)

  key('n', 'gd', vim.lsp.buf.definition)
  key('n', 'gh', vim.lsp.buf.hover)
  key('n', 'gi', vim.lsp.buf.implementation)
  key('n', 'ge', vim.diagnostic.open_float)
  key('n', '<c-k>', vim.lsp.buf.signature_help)
  key('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
  key('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
  key(
    'n',
    '<leader>wl',
    U.bind(print, vim.inspect(vim.lsp.buf.list_workspace_folders()))
  )
  key('n', 'gtd', vim.lsp.buf.type_definition)
  key('n', 'gr', vim.lsp.buf.rename)
  key('n', 'ga', vim.lsp.buf.code_action)
  key('n', 'gR', vim.lsp.buf.references)
  key('n', 'gf', U.bind(vim.lsp.buf.format, { async = true }))
  key('n', 'gnd', vim.diagnostic.goto_prev)
  key('n', 'gNd', vim.diagnostic.goto_next)
  key('n', '<leader>q', vim.diagnostic.setloclist)
end

return M
