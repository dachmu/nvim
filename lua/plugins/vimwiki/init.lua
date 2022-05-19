-- Personal wiki configuration

-- Makes vimwiki markdown links as [text](text.md) instead of [text](text)
vim.g.vimwiki_markdown_link_ext = 1
vim.g.vimwiki_list = {
    {
        path = '/mnt/d/CloudStorage/Dropbox/Wikies',
        syntax = 'markdown',
        ext = '.md',
    },
    {
        path = '/mnt/d/CloudStorage/Dropbox/Writing',
        syntax = 'markdown',
        ext = '.md',
    },
    {
        path = '/mnt/d/CloudStorage/Dropbox/Tools',
        syntax = 'markdown',
        ext = '.md',
    }
}
