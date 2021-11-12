vim.cmd [[packadd packer.nvim]]
return require("packer").startup(function()
	use 'wbthomason/packer.nvim'
    use {'equalsraf/neovim-gui-shim'}

    -- themes
    use {'christianchiarulli/nvcode-color-schemes.vim'}
    use {'folke/tokyonight.nvim'}
    use {'mhartington/oceanic-next'}
    use {'marko-cerovac/material.nvim'}
    use {'rafamadriz/neon'}
    use {'Mofiqul/vscode.nvim'}
    use {'sainnhe/edge'}
    use {'shaunsingh/nord.nvim'}

    -- autocompletion
    use {'neoclide/coc.nvim', branch = 'release'}

    --snippets
    use {'honza/vim-snippets'}
    use {'hrsh7th/vim-vsnip'}

    -- syntax
    use {'nvim-treesitter/nvim-treesitter',run = ':TSUpdate'}

    -- utils
    use {'folke/which-key.nvim'}
    use {'lukas-reineke/indent-blankline.nvim'}
    use {'RRethy/vim-illuminate'}
    use {'tpope/vim-repeat'}
    use {'folke/todo-comments.nvim', requires = "nvim-lua/plenary.nvim"}
    use {'phaazon/hop.nvim',as = 'hop', config = function() require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end}


    -- editing
    use {'windwp/nvim-ts-autotag'}
    use {'b3nj5m1n/kommentary',config = "require('core.comment')"}
    use {'p00f/nvim-ts-rainbow'}
    use {'mg979/vim-visual-multi', branch='master'}
    use {'tpope/vim-surround'}
    use {'andymass/vim-matchup'}
    use {'kevinhwang91/nvim-bqf'}


    --layout
    use {'kyazdani42/nvim-tree.lua',requires = 'kyazdani42/nvim-web-devicons'}
    use {'hoob3rt/lualine.nvim',requires = {'kyazdani42/nvim-web-devicons', opt = true}}
    use {'romgrk/barbar.nvim',requires = {'kyazdani42/nvim-web-devicons'}}
    use {'akinsho/toggleterm.nvim'}
    use {'dstein64/nvim-scrollview'}

    -- Git
    use {'tpope/vim-fugitive'}
    use {'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim'}
    use {'sindrets/diffview.nvim'}
    use {'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'}}

    
    --telescope
    use {'nvim-telescope/telescope.nvim', requires = {{'nvim-lua/plenary.nvim'}}}
    use {'fannheyward/telescope-coc.nvim'}
    use {'nvim-telescope/telescope-fzy-native.nvim'}
    
end
)
