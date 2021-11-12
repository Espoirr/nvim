--vim.g.vscode_style = 'dark'

--require('material').setup({
 --text_contrast = {
     --darker = true
 --},
--})
--


vim.cmd[[
colorscheme nvcode 
]]

vim.cmd[[
hi TSKeyword gui=italic
hi TSKeywordFunction gui=italic
hi TSConditional gui=italic
hi TSRepeat gui=italic
hi TSComment gui=italic
hi TSBoolean gui=italic
hi TSInclude gui=italic
hi TSTypeBuiltin guifg=#C586C0
]]
