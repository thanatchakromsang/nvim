local keymap = vim.api.nvim_set_keymap

keymap('n', '<Space>', '<NOP>', {noremap = true, silent = true})
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
keymap('n', '<c-h>', '<c-w>h', {silent = true})
keymap('n', '<c-j>', '<c-w>j', {silent = true})
keymap('n', '<C-k>', '<C-w>k', {silent = true})
keymap('n', '<C-l>', '<C-w>l', {silent = true})

-- PageUp PageDown movement up/down 5 lines
keymap('', '<PageUp>', '5<C-U>', {silent = true})
keymap('', '<PageDown>', '5<C-D>', {silent = true})

-- Move around in normal mode
keymap('', 'H', '^', {noremap = true})
keymap('', 'L', '$', {noremap = true})

-- Move selected line / block of text in visual mode
keymap('x', 'K', ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
keymap('x', 'J', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- better indenting
keymap('v', '<', '<gv', {noremap = true, silent = true})
keymap('v', '>', '>gv', {noremap = true, silent = true})

-- tab switch buffer
keymap('n', '<TAB>', ':bnext<CR>', {noremap = true, silent = true})
keymap('n', '<S-TAB>', ':bprevious<CR>', {noremap = true, silent = true})

keymap('n', '<ESC>', ':noh<CR>', {noremap = true, silent = true}) -- Remove search highlight after esc

-- navigate between display lines
keymap('n', 'k', 'v:count == 0 ? "gk" : "k"', {noremap = true, expr = true})
keymap('n', 'j', 'v:count == 0 ? "gj" : "j"', {noremap = true, expr = true})
keymap('n', '<Up>', 'v:count == 0 ? "gk" : "k"', {noremap = true, expr = true})
keymap('n', '<Down>', 'v:count == 0 ? "gj" : "j"', {noremap = true, expr = true})

-- no need for ex mode
keymap('n', 'Q', '<nop>', {noremap = true, silent = true})

-- vim-yoink clipboard history
keymap('', 'Y', 'y$', {noremap = true})
vim.cmd([[
  nmap <c-n> <plug>(YoinkPostPasteSwapBack)
  nmap <c-p> <plug>(YoinkPostPasteSwapForward)

  nmap p <plug>(YoinkPaste_p)
  nmap P <plug>(YoinkPaste_P)

  nmap y <plug>(YoinkYankPreserveCursorPosition)
  xmap y <plug>(YoinkYankPreserveCursorPosition)
]])
