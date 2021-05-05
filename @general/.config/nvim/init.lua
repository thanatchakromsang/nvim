-- General mappings
require('plugins')
require('keymappings')
require('settings')
require('colorscheme')

-- Plugins settings
require('plugin-settings')
require('plugin-galaxyline')
require('plugin-autopairs')
require('plugin-compe')
require('plugin-bufferline')
require('plugin-lspkind')
require('plugin-treesitter')
require('plugin-telescope')
require('plugin-which-key')

-- LSP
require('lsp')
require('lsp/dap') -- debugger
require('lsp/saga')
