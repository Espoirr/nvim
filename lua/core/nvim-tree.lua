require 'nvim-tree'.setup{
    open_on_setup = true,
    auto_close = false,
    view = {
        auto_resize = true,
        width = 40
    },
    update_focused_file = {
        enable = true,
        update_cwd = true
    }
}
local g = vim.g

g.nvim_tree_show_icons = {
  git = 0,
  folders = 1,
  files = 1,
  folder_arrows = 1
}

g.nvim_tree_icons = {
    default = "‣ "
}

-- nvim-tree
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}
map('n', '<C-b>', ':NvimTreeToggle<CR>', default_opts)       -- open/close
map('n', '<leader>r', ':NvimTreeRefresh<CR>', default_opts)  -- refresh
map('n', '<leader>b', ':NvimTreeFindFile<CR>', default_opts) -- search file

