" Using Lua functions
" nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
" nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
" nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
" nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>
" nnoremap <leader>fc <cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<cr>
" nnoremap <leader>fgs <cmd>lua require('telescope.builtin').git_status()<cr>
" nnoremap <leader>fgc <cmd>lua require('telescope.builtin').git_commits()<cr>


lua << EOF
local actions = require('telescope.actions')

require('telescope').setup {
    layout_config = {
        width = 0.75,
        prompt_position = "top",
        preview_cutoff = 120,
        horizontal = {mirror = false},
        vertical = {mirror = false},
    },
    find_command = {
      "rg",
      "--no-heading",
      "--with-filename",
      "--line-number",
      "--column",
      "--smart-case",
    },
    prompt_prefix = " ",
    selection_caret = " ",
    entry_prefix = "  ",
    initial_mode = "insert",
    selection_strategy = "reset",
    sorting_strategy = "descending",
    layout_strategy = "horizontal",
    color_devicons = true,
    use_less = true,
    winblend = 0,
    set_env = {['COLORTERM'] = 'truecolor'}, -- default = nil,
    mappings = {
            i = {
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
                ["<esc>"] = actions.close,
                ["<CR>"] = actions.select_default + actions.center
            },
            n = {
                ["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
            }
        },
    extensions = {
        fzy_native = {
            override_generic_sorter = true,
            override_file_sorter = true,
        }
    }
}
 require('telescope').load_extension('fzy_native')
 require('telescope').load_extension('coc')

EOF
