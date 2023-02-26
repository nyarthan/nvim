local cmp = require("cmp")
local luasnip = require("luasnip")

local M = {}

M.setup = function()
  cmp.setup({
    expand = function(args)
      luasnip.lsp_expand(args.body)
    end,
    mapping = cmp.mapping.preset.insert({
      ["<c-j>"] = cmp.mapping.select_next_item(),
      ["<c-k>"] = cmp.mapping.select_prev_item(),
      ["<c-b>"] = cmp.mapping.scroll_docs(-4),
      ["<c-f>"] = cmp.mapping.scroll_docs(4),
      ["<c-space>"] = cmp.mapping.complete(),
      ["<c-e>"] = cmp.mapping.abort(),
      ["<c-i>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
      -- { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "nvim_lsp" },
    }, {
      { name = "buffer" }
    })
    ,experimental = { ghost_text = true}
  })
end

return M
