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

    -- Nice color scheme
    use 'sts10/vim-pink-moon'

    -- LSP confs, remember to set up the servers
    use 'neovim/nvim-lspconfig'

    -- Completion to leverage the lsp
    use 'nvim-lua/completion-nvim'

    -- Prettier LSP uis
    use 'glepnir/lspsaga.nvim'

    -- Pretty Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Better Syntax hightlights, use :TSInstall <language> to install a language
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Better fuzzy engine, for the fuzzy finder
    use 'nvim-telescope/telescope-fzy-native.nvim'

    -- Better fuzzy finding and preview
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' }, { 'nvim-lua/popup.nvim' } } }

    -- Better signatures
    use 'ray-x/lsp_signature.nvim'

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
