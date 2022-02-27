vim.cmd(
[[
runtime ./vim-files/base.vim
runtime ./vim-files/keymappings.vim
runtime ./vim-files/telescope.vim
runtime ./vim-files/vim-illuminate.vim
runtime ./vim-files/coc-mappings.vim
runtime ./vim-files/coc-extensions.vim
]]
)

require('core/lualine')
require('core/nvim-tree')
require('core/colorscheme')
require('core/nvim-treesitter')
require('core/toggleterm')
require('core/gitsigns')
require('core/whichkey')

require('nvim-ts-autotag').setup()
require('todo-comments').setup()
require('core/comment').setup()


