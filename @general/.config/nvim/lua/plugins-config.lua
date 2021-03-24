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
