return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Edit text
    use { 'mbbill/undotree' }
    use { 'mg979/vim-visual-multi', branch = 'master' }
    use { 'github/copilot.vim' }
    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup()
        end
    })
    use { 'RRethy/vim-illuminate' }

    -- Navigation
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }
    use {
        "ggandor/leap.nvim",
        requires = {
            'tpope/vim-repeat' ,
        }
    }

    -- Visual
    use { 'rebelot/kanagawa.nvim' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use { 'goolord/alpha-nvim' }
    use { 'lewis6991/gitsigns.nvim' }
    use { 'tpope/vim-fugitive' }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { "numToStr/Comment.nvim" }

    -- Treesitter
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

    -- LSP
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

    --Flutter
    use {
        'akinsho/flutter-tools.nvim',
        requires = {
            'nvim-lua/plenary.nvim',
            'stevearc/dressing.nvim',
        },
    }

    -- DAP
    use {
        "mfussenegger/nvim-dap",
        requires = {
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-telescope/telescope-dap.nvim",
        }
    }
end)
