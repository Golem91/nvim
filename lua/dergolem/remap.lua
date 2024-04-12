vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
      ['<Tab>'] = cmp.mapping.confirm({select = true}),
  }),
})
