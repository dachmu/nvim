local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

require('packer').startup(function(use)
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Best personal Wiki
    use 'vimwiki/vimwiki'

    -- Git integration
    use 'tpope/vim-fugitive'

    -- Automatic tag management
    use 'ludovicchabant/vim-gutentags'

    -- Manages comments
    use 'tpope/vim-commentary'

    -- Handles the use of pandoc conversion
    use 'vim-pandoc/vim-pandoc'

    -- Handles the pandoc syntax
    use 'vim-pandoc/vim-pandoc-syntax'

    -- Handles math in markdown preview
    use 'iamcco/mathjax-support-for-mkdp'

    -- Markdown preview, use :MarkdownPreview
    -- use { 'iamcco/markdown-preview.vim' , run = 'cd app && yarn install', ft = 'markdown' }

    -- Allows comentary and surround work with .
    use 'tpope/vim-repeat'

    -- Surrounding machine
    use 'tpope/vim-surround'

    -- Add git related info in the signs columns and popups
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }

    -- Colorschemes
    use 'shaunsingh/nord.nvim' -- set colorscheme nord
    use { 'mcchrish/zenbones.nvim', requires = { 'rktjmp/lush.nvim' } }

    -- LSP config
    use 'neovim/nvim-lspconfig' -- Enable LSP
    use 'williamboman/nvim-lsp-installer' -- Easy Language server install
    -- use 'ray-x/lsp_signature.nvim' -- Better signatures
    -- use 'glepnir/lspsaga.nvim' -- Prettier LSP uis

    -- Cmp Plugins
    use 'hrsh7th/nvim-cmp' -- Completion Engine
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- buffer completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'saadparwaiz1/cmp_luasnip' -- snippet completion


    -- Pretty Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Treesitter 
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Better Syntax hightlights
    use { 'nvim-treesitter/playground' } -- Toogles view of Treesitter syntanx tree
    use { 'p00f/nvim-ts-rainbow' } -- Better Bracket visibility

    -- Better fuzzy engine, for the fuzzy finder
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Better fuzzy finding and preview
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-lua/popup.nvim' } } }


    -- Status line pluggin
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Prettier tabline
    use 'crispgm/nvim-tabline'

    -- Pretty start screen
    use 'mhinz/vim-startify'

    -- Git blame, who did what
    use 'f-person/git-blame.nvim'

    -- Visual aid for git changes
    use 'airblade/vim-gitgutter'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
