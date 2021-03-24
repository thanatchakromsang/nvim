-- General mappings
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugins settings
require('plugins-config')
require('plugin-galaxyline')
require('plugin-gitsigns')
require('plugin-nvim-tree')
require('plugin-autopairs')
require('plugin-compe')
require('plugin-bufferline')
require('plugin-lspkind')
require('plugin-treesitter')
require('plugin-telescope')

-- LSP
require('lsp')
require('lsp/dap') -- debugger


-- Vimscript settings
vim.cmd('source ~/.config/nvim/vimscript/whichkey/init.vim')

-- TODO: Fix ctrl-l for kitty clear screen to another key
