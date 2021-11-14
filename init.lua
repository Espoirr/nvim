vim.cmd(
[[
runtime ./vim-files/base.vim
runtime ./vim-files/keymappings.vim
runtime ./vim-files/telescope.vim
runtime ./vim-files/vim-illuminate.vim
]]
)

require('core/lualine')
require('core/nvim-tree')
require('core/colorscheme')
require('core/nvim-treesitter')
require('core/comment')
require('core/toggleterm')
require('core/gitsigns')
require('core/whichkey')
require('core/autocompletion')
require('core/formatter')

require('nvim-ts-autotag').setup()
require('nvim-autopairs').setup()
require('todo-comments').setup()
require('renamer').setup()

-- custom autocmds
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]


