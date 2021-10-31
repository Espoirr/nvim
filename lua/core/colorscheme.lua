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
hi TSKeyword gui=italic,bold 
hi TSKeywordFunction gui=italic,bold 
hi TSConditional gui=italic,bold 
hi TSRepeat gui=italic,bold 
hi TSComment gui=italic,bold 
hi TSBoolean gui=italic,bold 
hi TSInclude gui=italic,bold 
hi TSTypeBuiltin guifg=#C586C0
]]
