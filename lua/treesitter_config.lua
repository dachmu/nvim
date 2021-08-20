-- lets Configure Treesitter

require("nvim-treesitter.configs").setup({
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = false,
        disable = {},
    },
    ensure_installed = {
        "json",
        "yaml",
        "html",
        "scss",
        "c",
        "cpp",
        "java",
        "python",
        "javascript",
        "typescript",
        "lua",
        "dockerfile",
        "latex",
        "regex",
    }
})
