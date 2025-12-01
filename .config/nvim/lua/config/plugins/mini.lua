-- lua/config/plugins/mini.lua
return {
    {
        'nvim-mini/mini.nvim',
--        dependencies = {
--            -- Optional
--            'nvim-mini/mini.icons',
--            'nvim-mini/mini.git',
--            'nvim-mini/mini.diff',
--        },

        config = function()
            -- Main - mini.statusline
            local statusline = require 'mini.statusline'
            statusline.setup { use_icons = true }
 
            -- Optional Plugins
            -- mini.icons
            local ok_git, mini_git = pcall(require, 'mini.icons')
            if ok_icons then icons.setup()
            end

            -- mini.git
            local ok_git, mini_git = pcall(require, 'mini.git')
            if ok_git then
                mini_git.setup({
                    signs = {
                        add = '+',
                        change = '~',
                        delete = '-'
                    }
                })
            end

            -- mini.diff
            local ok_diff, mini_diff = pcall(require, 'mini.diff')
            if ok_diff then
                mini_git.setup({
                    view = { style = 'sign' },
                })
            end
        end
    }
}
