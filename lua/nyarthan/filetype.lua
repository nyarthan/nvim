local M = {}

M.setup = function()
  require('filetype').setup({
    overrides = {
      extensions = {
        mdx = 'markdown',
      },
    },
  })
end

return M
