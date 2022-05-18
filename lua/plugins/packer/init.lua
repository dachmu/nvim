local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

require('packer').startup(function(use)
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Writting and Notetaking
    use 'vimwiki/vimwiki' -- Personal Wiki

    -- Utils
    use 'ludovicchabant/vim-gutentags' -- Automatic tag management
    use 'tpope/vim-commentary' -- Manages comments
    use 'tpope/vim-repeat' -- Allows comentary and surround work with .
    use 'tpope/vim-surround' -- Surrounding adjective with ys
    
    -- Handles the use of pandoc conversion
    -- use 'vim-pandoc/vim-pandoc'

    -- Handles the pandoc syntax
    -- use 'vim-pandoc/vim-pandoc-syntax'

    -- Handles math in markdown preview
    -- use 'iamcco/mathjax-support-for-mkdp'

    -- Markdown preview, use :MarkdownPreview
    -- use { 'iamcco/markdown-preview.vim' , run = 'cd app && yarn install', ft = 'markdown' }

    -- Colorschemes
    use 'shaunsingh/nord.nvim' -- set colorscheme nord
    use { 'mcchrish/zenbones.nvim', requires = { 'rktjmp/lush.nvim' } }

    -- LSP config
    use 'neovim/nvim-lspconfig' -- Enable LSP
    use 'williamboman/nvim-lsp-installer' -- Easy Language server install
    -- use 'ray-x/lsp_signature.nvim' -- Better signatures
    -- use 'glepnir/lspsaga.nvim' -- Prettier LSP uis

    -- Cmp Plugins for autocompletion
    use 'hrsh7th/nvim-cmp' -- Completion Engine
    use 'hrsh7th/cmp-buffer' -- buffer completions
    use 'hrsh7th/cmp-path' -- buffer completions
    use 'hrsh7th/cmp-cmdline' -- cmdline completions
    use 'saadparwaiz1/cmp_luasnip' -- snippet completion

    -- Treesitter 
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Better Syntax hightlights
    use 'nvim-treesitter/playground' -- Toogles view of Treesitter syntanx tree
    use 'p00f/nvim-ts-rainbow' -- Better Bracket visibility

    -- Better fuzzy engine, for the fuzzy finder
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Better fuzzy finding and preview
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-lua/popup.nvim' } } }

    -- Ui Improvements
    use 'mhinz/vim-startify' -- Pretty start screen
    use 'crispgm/nvim-tabline' -- Touches up the tabline
    --use 'kyazdani42/nvim-web-devicons' -- Icons Support
    use {
        'hoob3rt/lualine.nvim', -- Provides a status line
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }

    -- Git Integration and improvements
    use 'f-person/git-blame.nvim' -- Git blame
    use 'airblade/vim-gitgutter' -- Visual aid for git changes
    use 'tpope/vim-fugitive' -- Git integration
    use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } } -- Git signs in columns

    if packer_bootstrap then
        require('packer').sync()
    end
end)