require('settings')
require('keymaps')
require('colorscheme')

require('packer').startup(function(use)
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Best personal Wiki
    use 'vimwiki/vimwiki'

    -- Nice color scheme
    use 'sts10/vim-pink-moon'

    -- LSP confs, remember to set up the servers
    use 'neovim/nvim-lspconfig'

    -- Prettier LSP uis
    use 'glepnir/lspsaga.nvim'

    -- Pretty Icons
    use 'kyazdani42/nvim-web-devicons'

    -- Better Syntax hightlights, use :TSInstall <language> to install a language
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- Better fuzzy finding and preview
    use 'nvim-lua/popup.nvim'
    use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/plenary.nvim' } } }

    -- Better signatures
    use 'ray-x/lsp_signature.nvim'

    -- add other use ... for other packer
end)

require("treesitter_config")
require("telescope_config")
require("lsp_signature_config")
require("lsp_language_servers_config")
