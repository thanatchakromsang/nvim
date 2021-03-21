-- Utils
require('nvim_utils')

-- General mappings
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugins settings
require('nvim-comment')
require('gitblame')
require('hop')

-- Vimscript settings
vim.cmd('source ~/.config/nvim/vimscript/whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/gitgutter/init.vim')

-- TODO: Fix ctrl-l for kitty clear screen to another key
