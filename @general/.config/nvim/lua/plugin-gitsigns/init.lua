require("gitsigns").setup {
  signs = {
    add          = {hl = 'GitGutterAdd'   , text = '▌', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitGutterChange', text = '▌', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitGutterDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitGutterDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitGutterChangeDelete', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
  keymaps = {
    -- Default keymap options
    noremap = true,
    buffer = true,

    ['n <leader>gn'] = { expr = true, "&diff ? ']c' : ':lua require\"gitsigns\".next_hunk()<CR>'"},
    ['n <leader>gp'] = { expr = true, "&diff ? '[c' : ':lua require\"gitsigns\".prev_hunk()<CR>'"},

    ['n <leader>gs'] = ':lua require"gitsigns".stage_hunk()<CR>',
    ['n <leader>gu'] = ':lua require"gitsigns".undo_stage_hunk()<CR>',
    ['n <leader>gr'] = ':lua require"gitsigns".reset_hunk()<CR>',
    ['n <leader>gR'] = ':lua require"gitsigns".reset_buffer()<CR>',
    ['n <leader>gP'] = ':lua require"gitsigns".preview_hunk()<CR>',
    ['n <leader>gb'] = ':lua require"gitsigns".blame_line()<CR>',

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
