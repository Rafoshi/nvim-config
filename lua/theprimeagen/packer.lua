vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use { 'rebelot/kanagawa.nvim' }
    use { "RRethy/vim-illuminate" }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function()
            require 'nvim-treesitter.configs'.setup {
                ensure_installed = 'all',
                highlight = {
                    enable = true,
                },
            }
            require 'nvim-treesitter.install'.prefer_git = false
        end
    }
    use { 
        'theprimeagen/harpoon',
        branch = "harpoon2"
    }
    use { 'github/copilot.vim' }
    use { 'folke/todo-comments.nvim' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'mbbill/undotree' }
    use { 'mg979/vim-visual-multi', branch = 'master' }
    use {
        "ggandor/leap.nvim",
        requires = {
            'tpope/vim-repeat' ,
        }
    }
    use {
        "SmiteshP/nvim-navbuddy",
        requires = {
            "SmiteshP/nvim-navic",
            "MunifTanjim/nui.nvim",
            "numToStr/Comment.nvim",
        }
    }
    use {
        'VonHeikemen/lsp-zero.nvim',
        cond = [[not vim.g.vscode]],
        branch = 'v1.x',
        requires = {
            'neovim/nvim-lspconfig',
            'williamboman/mason.nvim',
            'williamboman/mason-lspconfig.nvim',
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    }
end)
