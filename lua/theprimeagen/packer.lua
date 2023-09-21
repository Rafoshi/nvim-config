vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.2',
        cond = [[not vim.g.vscode]],
        requires = { 'nvim-lua/plenary.nvim' } 
    }

    use {
        "folke/tokyonight.nvim",
        cond = [[not vim.g.vscode]],
        config = function()
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        cond = [[not vim.g.vscode]],
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = 'all',
                highlight = {
                    enable = true,
                },
            }
            require'nvim-treesitter.install'.prefer_git = false
        end
    }
    use {
        'theprimeagen/harpoon',
        cond = [[not vim.g.vscode]],
    }
    use {
        'github/copilot.vim',
        cond = [[not vim.g.vscode]],
    }
    use {
        'mbbill/undotree', 
        cond = [[not vim.g.vscode]],
    }
    use {
        'mg979/vim-visual-multi',
        branch = 'master'
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

