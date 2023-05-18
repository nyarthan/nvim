local M = {}

M.setup = function()
  require('filetype').setup({
    overrides = {
      extensions = {
        mdx = 'markdown',
        json = 'jsonc',
      },
      literal = {
        ['.gitignore'] = 'gitignore',
        ['.prettierignore'] = 'gitignore',
        ['.prettierrc'] = 'jsonc',
        ['.eslintrc'] = 'jsonc',
      },
    },
  })
end

return M
