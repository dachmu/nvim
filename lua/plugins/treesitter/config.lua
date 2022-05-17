-- lets Configure Treesitter

require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
        disable = {},
    },
    indent = {
        enable = true,
        disable = { "yml", },
    },
    ensure_installed = {
        "c",
        "cpp",
        "dockerfile",
        "html",
        "java",
        "javascript",
        "json",
        "latex",
        "lua",
        "python",
        "regex",
        "scss",
        "typescript",
        "yaml",
    },
}
