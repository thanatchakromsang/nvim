local map = vim.api.nvim_set_keymap

map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '
vim.g.maplocalleader = ","

-- no one is really happy until have this shortcuts
vim.cmd([[
  cnoreabbrev W! w!
  cnoreabbrev Q! q!
  cnoreabbrev Qall! qall!
  cnoreabbrev Wq wq
  cnoreabbrev Wa wa
  cnoreabbrev wQ wq
  cnoreabbrev WQ wq
  cnoreabbrev W w
  cnoreabbrev Q q
  cnoreabbrev Qall qall
]])

-- better window movement
map('n', '<c-h>', '<c-w>h', {silent = true})
map('n', '<c-j>', '<c-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

-- PageUp PageDown movement up/down 5 lines
map('', '<PageUp>', '10<C-U>', {silent = true})
map('', '<PageDown>', '10<C-D>', {silent = true})

-- Move around in normal mode
map('', 'H', '^', {noremap = true})
map('', 'L', '$', {noremap = true})

-- Move selected line / block of text in visual mode
map('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
map('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- better indenting
map('v', '<', '<gv', {noremap = true, silent = true})
map('v', '>', '>gv', {noremap = true, silent = true})

-- tab switch buffer
map('n', '<TAB>', ':BufferLineCycleNext<CR>', {noremap = true, silent = true})
map('n', '<S-TAB>', ':BufferLineCyclePrev<CR>', {noremap = true, silent = true})

map('n', '<ESC>', ':noh<CR>', {noremap = true, silent = true}) -- Remove search highlight after esc

-- navigate between display lines
map('n', 'k', 'v:count == 0 ? "gk" : "k"', {noremap = true, expr = true})
map('n', 'j', 'v:count == 0 ? "gj" : "j"', {noremap = true, expr = true})
map('n', '<Up>', 'v:count == 0 ? "gk" : "k"', {noremap = true, expr = true})
map('n', '<Down>', 'v:count == 0 ? "gj" : "j"', {noremap = true, expr = true})

-- no need for ex mode
map('n', 'Q', '<nop>', {noremap = true, silent = true})

-- Bufferline
map('n', 'gb', ':BufferLinePick<CR>', {noremap = true, silent = true})

-- Fugitive
map('', '<leader>gB', ':Gbrowse<CR>', {noremap = true, silent = true})

-- Gitsigns
map('', '<leader>gs', ':lua require"gitsigns".stage_hunk()<CR>', {noremap = true, silent = true})
map('', '<leader>gu', ':lua require"gitsigns".undo_stage_hunk()<CR>', {noremap = true, silent = true})
map('', '<leader>gr', ':lua require"gitsigns".reset_hunk()<CR>', {noremap = true, silent = true})
map('n', '<leader>gP', ':lua require"gitsigns".preview_hunk()<CR>', {noremap = true, silent = true})
map('n', '<leader>gn', ':lua require"gitsigns".next_hunk()<CR>', {noremap = true, silent = true})
map('n', '<leader>gp', ':lua require"gitsigns".prev_hunk()<CR>', {noremap = true, silent = true})
map('n', '<leader>gbl', ':lua require"gitsigns".blame_line()<CR>', {noremap = true, silent = true})

-- split
map('n', '<localleader>b', ':split<CR>', {noremap = true, silent = true})
map('n', '<localleader>v', ':vsplit<CR>', {noremap = true, silent = true})

-- local leader misc
map('n', '<localleader>c', ':bdelete<CR>', {noremap = true, silent = true})
map('n', '<localleader>w', ':close<CR>', {noremap = true, silent = true})
map('n', '<localleader>.', ':lcd %:p:h<CR>', {noremap = true, silent = true}) -- set working dir
