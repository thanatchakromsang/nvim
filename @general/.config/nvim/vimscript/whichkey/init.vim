" Leader Key Maps

" By default timeoutlen is 1000 ms
set timeoutlen=100

" Timeout
let g:which_key_timeout = 100

let g:which_key_display_names = {'<CR>': '↵', '<TAB>': '⇆'}
let g:which_key_sep = '→'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0
let g:which_key_max_size = 0

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Which Key "<Space>" Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:which_key_map_leader = {}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" F is for fold
let g:which_key_map_leader.F = {
    \ 'name': '+fold',
    \ 'O' : [':set foldlevel=20', 'open all'],
    \ 'C' : [':set foldlevel=0', 'close all'],
    \ 'c' : [':foldclose', 'close'],
    \ 'o' : [':foldopen', 'open'],
    \ '1' : [':set foldlevel=1', 'level1'],
    \ '2' : [':set foldlevel=2', 'level2'],
    \ '3' : [':set foldlevel=3', 'level3'],
    \ '4' : [':set foldlevel=4', 'level4'],
    \ '5' : [':set foldlevel=5', 'level5'],
    \ '6' : [':set foldlevel=6', 'level6']
    \ }

let g:which_key_map_leader['S'] = {
  \ 'name' : '+startify',
  \ 's' : [':SSave'        , 'save session'                 ],
  \ 'l' : [':SLoad'        , 'load session'                 ],
  \ 'd' : [':SDelete'      , 'delete session'               ],
  \ 'c' : [':SClose'       , 'close session'                ],
  \ 'h' : [':Startify'     , 'startify home'                ],
  \ }

let g:which_key_map_leader[' '] = [ 'za', 'fold toggle']
let g:which_key_map_leader['r'] = [ ':RnvimrToggle' , 'ranger']
let g:which_key_map_leader['u'] = [ ':PackerUpdate' , 'Plugin update']

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Which Key "," Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:which_key_map_localleader = {}

" Map localleader to which_key
nnoremap <silent> <localleader> :silent <c-u> :silent WhichKey ','<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_map_localleader.g = {
    \ 'name': '+git',
    \ 'P' : ['<Plug>(GitGutterPreviewHunk)', 'Preview Hunk'],
    \ 's' : ['<Plug>(GitGutterStageHunk)', 'Stage Hunk'],
    \ 'u' : ['<Plug>(GitGutterUndoHunk)', 'Undo Hunk'],
    \ 'p' : [':GitGutterPrevHunk', 'Go to Previous Hunk'],
    \ 'n' : [':GitGutterNextHunk', 'Go to Next Hunk'],
    \ 't' : [':GitGutterToggle', 'Toggle GitGutter'],
    \ 'b' : [':GitBlameToggle', 'Toggle GitBlame']
    \ }

let g:which_key_map_localleader['.'] = [ ':lcd %:p:h'          ,  'set working dir'               ]
let g:which_key_map_localleader['c'] = [ ':let @+= expand("%")',  'copy current dir to clipboard' ]
let g:which_key_map_localleader['b'] = [ ':split'         ,  'horizontal split'              ]
let g:which_key_map_localleader['v'] = [ ':vsplit'        ,  'vertical split'                ]

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Register Which Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

call which_key#register('<Space>', "g:which_key_map_leader")
call which_key#register(',', "g:which_key_map_localleader")




