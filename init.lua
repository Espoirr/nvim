vim.cmd([[
runtime ./vim-files/base.vim
runtime ./vim-files/keymappings.vim
runtime ./vim-files/telescope.vim
runtime ./vim-files/vim-illuminate.vim

]])

--[[ runtime ./vim-files/coc-extensions.vim
runtime ./vim-files/coc-mappings.vim ]]




require('core/lualine')
require('core/nvim-tree')
require('core/colorscheme')
require('core/nvim-treesitter')
require('core/comment')
require('core/toggleterm')
require('core/gitsigns')
require('core/whichkey')
require('core/autocompletion')
require('core/lspkind')
require('core/lsputils')

require('nvim-ts-autotag').setup()
require('todo-comments').setup()
require('nvim-autopairs').setup()



-- TODO: Add proper italics support
-- TODO: add git commands to which key
-- FIX: NvimTree shifting to right after telescope search

