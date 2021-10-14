require("nvim-treesitter.configs").setup({
  ensure_installed = {"css", "html", "lua", "vim", "javascript", "json", "tsx", "typescript" },
  ignore_install = {}, -- List of parsers to ignore installing
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = {}, -- list of language that will be disabled
  },
  rainbow = {
      enable = false, 
      extended_mode = true,
      max_file_lines = nil,
  },
  matchup = {
      enable = true
  }
})
