-- lua/config/keymaps.lua

-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Harpoon

local harpoon = require('harpoon')

-- REQUIRED because Prime says so
harpoon:setup()

vim.keymap.set('n', '<leader>a', function() harpoon:list():add() end)
vim.keymap.set('n', '<leader>s', function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set('n', '<leader>h', function() harpoon:list():select(1) end)
vim.keymap.set('n', '<leader>j', function() harpoon:list():select(2) end)
vim.keymap.set('n', '<leader>k', function() harpoon:list():select(3) end)
vim.keymap.set('n', '<leader>l', function() harpoon:list():select(4) end)
