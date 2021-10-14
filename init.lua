vim.cmd([[
runtime ./vim-files/base.vim
runtime ./vim-files/keymappings.vim
runtime ./vim-files/telescope.vim
runtime ./vim-files/vim-illuminate.vim
runtime ./vim-files/coc-extensions.vim
runtime ./vim-files/coc-mappings.vim
]])


require('core/lualine')
require('core/nvim-tree')
require('core/colorscheme')
require('core/nvim-treesitter')
require('core/comment')
require('core/toggleterm')
require('nvim-ts-autotag').setup()
require('core/gitsigns')
require('todo-comments').setup{}




-- TODO: Add ligature support
-- TODO: Add proper italics support
-- TODO: Improve Git Signs support
-- TODO: write useEffect snippet
-- TODO: make a leader shortcut for creating folding
-- FIX: NvimTree shifting to right after telescope search

