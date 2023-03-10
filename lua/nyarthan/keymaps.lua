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
