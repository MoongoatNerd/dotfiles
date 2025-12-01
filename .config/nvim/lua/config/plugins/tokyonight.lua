-- lua/config/plugins/tokyonight.lua
return {
    {
        "folke/tokyonight.nvim",
        enabled = false,
        config = function()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
            })
            vim.cmd.colorscheme "tokyonight"
        end
    }
}
