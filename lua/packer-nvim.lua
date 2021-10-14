vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function()
	use 'wbthomason/packer.nvim'
    -- themes
    use {'christianchiarulli/nvcode-color-schemes.vim'}
    use {'folke/tokyonight.nvim'}
    use {'mhartington/oceanic-next'}

    use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}
    use {'hoob3rt/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use {'romgrk/barbar.nvim',requires = {'kyazdani42/nvim-web-devicons'}}
    
    -- lsp and snippets
    
    use {'neoclide/coc.nvim', branch = 'release'}
    use {'honza/vim-snippets'}
    use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}
    use {'windwp/nvim-ts-autotag'}
    use {'b3nj5m1n/kommentary',config = "require('core.comment')"}
    use {'p00f/nvim-ts-rainbow'}

    use {'tpope/vim-fugitive'}
    use {'kevinhwang91/nvim-bqf'}
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
    use {'sindrets/diffview.nvim'}

    --telescope
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
    use {'nvim-telescope/telescope-fzy-native.nvim'}

    use {'tpope/vim-surround'}
    use {'akinsho/toggleterm.nvim'}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}
    use {'RRethy/vim-illuminate'}
    use {'andymass/vim-matchup'}
    use {'tpope/vim-repeat'}
    use {'psliwka/vim-smoothie'}
    
    --easy motion
    use {'phaazon/hop.nvim',as = 'hop', config = function() require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end}

    use {'folke/todo-comments.nvim', requires = "nvim-lua/plenary.nvim"}




	
end
)


