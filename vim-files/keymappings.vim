"nerdcommenter mappings
"nmap <C-/>   <Plug>NERDCommenterToggle
"vmap <C-/>   <Plug>NERDCommenterToggle<CR>gv

lua <<EOF
local map = vim.api.nvim_set_keymap
local default_opts = {noremap = true, silent = true}

vim.g.mapleader = ' '
vim.b.mapleader = ' '

-- general key binds
map('i', 'jj', '<esc>',default_opts)
map('n','<c-s>', ':w<cr>',default_opts)
map('n','<c-z>','u',default_opts)
map('n','<c-y>','<c-r>',default_opts)

-- kommentary
map('n','<C-/>','gcc', {})
map('v','<C-/>','gc', {})

--hop word
map('n','q',':HopWord<CR>',default_opts)
-- todo comment
map('n','<leader>todo', ':TodoTelescope<CR>',default_opts)

-- move around splits using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h', default_opts)
map('n', '<A-j>', '<C-w>j', default_opts)
map('n', '<A-k>', '<C-w>k', default_opts)
map('n', '<C-l>', '<C-w>l', default_opts)

-- tabline mapings
map('n', '<A-1>', ':BufferGoto 2<CR>', default_opts)
map('n', '<A-2>', ':BufferGoto 3<CR>', default_opts)
map('n', '<A-3>', ':BufferGoto 4<CR>', default_opts)
map('n', '<A-4>', ':BufferGoto 5<CR>', default_opts)
map('n', '<A-5>', ':BufferGoto 6<CR>', default_opts)
map('n', '<leader>k', ':BufferClose<CR>', default_opts)

-- Line bubbling
map("n", "<c-j>", "<cmd>m .+1<CR>==", { silent = true })
map("n", "<c-k>", "<cmd>m .-2<CR>==", { silent = true })
map("v", "<c-j>", ":m '>+1<CR>==gv=gv", { silent = true })
map("v", "<c-k>", ":m '<-2<CR>==gv=gv", { silent = true })

---term toggle
map('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>', default_opts)
map('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', default_opts)


EOF

