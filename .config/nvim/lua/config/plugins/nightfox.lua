-- lua/config/plugins/nightfox.lua
return {
    {
        "EdenEast/nightfox.nvim",
        enabled = true,
        config = function()
            require("nightfox").setup({
                options = {
                    transparent = true,
                },
            })
            -- Choose: nightfox, dayfox, dawnfox, duskfox, nordfox, terafox or carbonfox
            vim.cmd.colorscheme "carbonfox"
        end
    }
}
