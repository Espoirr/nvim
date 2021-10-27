-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\yourp\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?.lua;C:\\Users\\yourp\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\yourp\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\yourp\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\yourp\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.0-beta3\\lib\\lua\\5.1\\?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\barbar.nvim"
  },
  ["coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\coc.nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\copilot.vim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\diffview.nvim"
  },
  edge = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\edge"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\gitsigns.nvim"
  },
  hop = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\hop"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\indent-blankline.nvim"
  },
  kommentary = {
    config = { "require('core.comment')" },
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\kommentary"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\material.nvim"
  },
  neogit = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neogit"
  },
  neon = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\neon"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nord.nvim"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvcode-color-schemes.vim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-bqf"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-autotag"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oceanic-next"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim"
  },
  ["telescope-coc.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-coc.nvim"
  },
  ["telescope-fzy-native.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope-fzy-native.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\toggleterm.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tokyonight.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-fugitive"
  },
  ["vim-illuminate"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-illuminate"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-matchup"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-repeat"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-smoothie"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-snippets"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-surround"
  },
  ["vim-test"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-test"
  },
  ["vim-visual-multi"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-visual-multi"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vim-vsnip"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\vscode.nvim"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "C:\\Users\\yourp\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: kommentary
time([[Config for kommentary]], true)
require('core.comment')
time([[Config for kommentary]], false)
-- Config for: hop
time([[Config for hop]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop")
time([[Config for hop]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
