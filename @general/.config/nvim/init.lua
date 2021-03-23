-- General mappings
require('plugins')
require('keymappings')
require('settings')

-- Plugins settings
require('plugin-nvim-comment')
require('plugin-nvim-peekup')
require('plugin-quickscope')
require('plugin-galaxyline')
require('plugin-gitsigns')
require('plugin-nvim-tree')
require('plugin-vim-rooter')
require('plugin-floaterm')
require('plugin-autopairs')
require('plugin-compe')
require('plugin-bufferline')
require('plugin-lspkind')
require('plugin-treesitter')
require('plugin-hop')
require('plugin-telescope')

-- LSP
require('lsp')
require('lsp/lsp-saga')
require('lsp/dap') -- debugger


-- Vimscript settings
vim.cmd('source ~/.config/nvim/vimscript/whichkey/init.vim')
vim.cmd('source ~/.config/nvim/vimscript/colorscheme.vim')

-- TODO: Fix ctrl-l for kitty clear screen to another key
