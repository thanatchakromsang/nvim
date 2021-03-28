-- vista
vim.g.vista_default_executive = 'nvim_lsp'

-- vsnip
vim.g.vsnip_snippet_dir = os.getenv('HOME') .. '/.config/nvim/snippets'

-- vim-rooter
vim.g.rooter_silent_chdir = 1

-- floaterm
vim.g.floaterm_keymap_new    = '<F7>'
vim.g.floaterm_keymap_prev   = '<F8>'
vim.g.floaterm_keymap_next   = '<F9>'
vim.g.floaterm_keymap_toggle = '<F12>'
vim.g.floaterm_title         =''

vim.g.floaterm_autoinsert    =1
vim.g.floaterm_width         =0.7
vim.g.floaterm_height        =0.7
vim.g.floaterm_wintitle      =0
vim.g.floaterm_autoclose     =1

-- peekup
vim.g.peekup_paste_after = '""'

require('nvim-peekup.config').on_keystroke["delay"] = ''
require('nvim-peekup.config').on_keystroke["paste_reg"] = '"'

-- nvim-comment
require('nvim_comment').setup(
  {
    -- Linters prefer comment and line to have a space in between markers
    marker_padding = true,
    -- should comment out empty or whitespace only lines
    comment_empty = false,
    -- Should key mappings be created
    create_mappings = true,
  }
)

-- quickscope
-- Trigger a highlight in the appropriate direction when pressing these keys:
vim.g.qs_highlight_on_keys = {'f', 'F', 't', 'T'}
vim.g.qs_max_chars=150
vim.g.qs_buftype_blacklist = {'terminal', 'nofile'}

-- Match up
vim.g.matchup_matchparen_offscreen = {method='popup'}

-- Gitsigns
require("gitsigns").setup {
  signs = {
    add          = {hl = 'GitGutterAdd'   , text = '▌', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitGutterChange', text = '▌', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitGutterDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitGutterDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitGutterChangeDelete', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  keymaps = {
    buffer = true,
    noremap = true,

    -- Text objects
    ['o ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>',
    ['x ih'] = ':<C-U>lua require"gitsigns".text_object()<CR>'
  },
  numhl = false,
  linehl = false,
  watch_index = {
      interval = 100
  },
  update_debounce = 100,
  sign_priority = 5,
  status_formatter = nil -- Use default
}

-- Sneak
vim.g['sneak#prompt'] = '  '

-- Indent blank line
vim.g.indent_blankline_buftype_exclude = {'terminal'}
vim.g.indent_blankline_filetype_exclude = {'help', 'startify', 'dashboard', 'packer', 'neogitstatus'}
vim.g.indent_blankline_char = '▏'
vim.g.indent_blankline_use_treesitter = true
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_current_context = true
vim.g.indent_blankline_context_patterns = {
  'class', 'return', 'function', 'method', '^if', '^while', 'jsx_element', '^for', '^object', '^table', 'block',
  'arguments', 'if_statement', 'else_clause', 'jsx_element', 'jsx_self_closing_element', 'try_statement',
  'catch_clause', 'import_statement', 'operation_type'
}
