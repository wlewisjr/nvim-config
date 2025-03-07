return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")
        configs.setup({
            ensure_installed = { "lua", "vim", "vimdoc",
                "javascript", "css", "html", "python"
            },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
