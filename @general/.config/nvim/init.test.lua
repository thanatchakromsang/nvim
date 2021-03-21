-- General mappings
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugins settings
require('lsp-dependencies')
require('nvim-comment')
require('quickscope')
require('gitblame')
require('rnvimr')
require('vim-rooter')

-- Vimscript settings
vim.cmd('source ~/.config/nvim/vimscript/whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/gitgutter/init.vim')

-- TODO: Fix ctrl-l for kitty clear screen to another key
