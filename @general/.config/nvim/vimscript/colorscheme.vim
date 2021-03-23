colorscheme gruvbox

set termguicolors


let g:gruvbox_sign_column='bg0' " disable highlight sign column

" Highlight yank
augroup highlight_yank
    autocmd!
    au TextYankPost * silent! lua vim.highlight.on_yank { higroup='IncSearch', timeout=500 }
augroup END



" TODO: Update Quickscope Highligts to be more obvious and match with Hops
