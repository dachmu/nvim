require('settings')
require('keymaps')
require('colorscheme')

require('packer').startup(function()
    -- Packer manages itself
    use 'wbthomason/packer.nvim'

    -- Best personal Wiki
    use 'vimwiki/vimwiki'

    -- Nice color scheme
    use 'sts10/vim-pink-moon'

    

    -- add other use ... for other packer
end)
