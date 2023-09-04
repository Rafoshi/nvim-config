vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        cond = [[not vim.g.vscode]],
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "folke/tokyonight.nvim",
        cond = [[not vim.g.vscode]],
        config = function()
            -- Your configuration for the plugin (if any)
        end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        cond = [[not vim.g.vscode]],
        run = ':TSUpdate',
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = 'all', -- You can configure which parsers to install
                highlight = {
                    enable = true,
                },
            }
            require'nvim-treesitter.install'.prefer_git = false
        end
    }
    use{
        'theprimeagen/harpoon',
        cond = [[not vim.g.vscode]],
    }

    use{
        'mbbill/undotree'
        cond = [[not vim.g.vscode]],
    }
    use {
        'mg979/vim-visual-multi',
        branch = 'master'
    }
    use('tpope/vim-fugitive')
    use {
        'VonHeikemen/lsp-zero.nvim',
        cond = [[not vim.g.vscode]],
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
    use{
        'tpope/vim-surround'
        cond = [[not vim.g.vscode]],
    }
end)
