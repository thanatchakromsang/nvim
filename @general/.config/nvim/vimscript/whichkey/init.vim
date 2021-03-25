" Leader Key Maps

" By default timeoutlen is 1000 ms
" If set low to 100 vim surround wouldn't work
set timeoutlen=600

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
" Which Key Normal "<Space>" Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:which_key_map_leader = {}

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

let g:which_key_map_leader[' '] = ['za', 'fold toggle']
let g:which_key_map_leader['r'] = [':FloatermNew ranger', 'ranger']
let g:which_key_map_leader['e'] = [':NvimTreeToggle', 'explorer']
let g:which_key_map_leader['v'] = [':Vista!!', 'vista']
let g:which_key_map_leader['p'] = {
    \ 'name': '+packer',
    \ 'u' : [':PackerUpdate', 'update'],
    \ 'i' : [':PackerInstall', 'install'],
    \ 'c' : [':PackerCompile', 'compile'],
    \ 'C' : [':PackerClean', 'clean'],
    \ 's' : [':PackerSync', 'sync'],
    \ }

let g:which_key_map_leader['c'] = {
    \ 'name' : '+close',
    \ 'w' : [':close', 'close window'],
    \ 'b' : [':bdelete', 'close buffer'],
    \ }

" F is for fold
let g:which_key_map_leader['F'] = {
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

let g:which_key_map_leader['g'] = {
    \ 'name': '+git',
    \ 'd': [':Gdiffsplit', 'git diff'],
    \ 'g': [':FloatermNew lazygit', 'lazygit'],
    \ 'p': 'go to prev hunk',
    \ 'n': 'go to next hunk',
    \ 's': 'stage hunk',
    \ 'u': 'undo stage hunk',
    \ 'r': 'reset hunk',
    \ 'R': 'reset buffer',
    \ 'P': 'preview hunk',
    \ 'B': 'browse',
    \ 'b' : {
      \ 'name': '+blame',
      \ 'l' : 'line',
      \ 'b' : [':Git blame' , 'buffer'] ,
      \ },
    \ }

" f is for find powered by telescope
let g:which_key_map_leader['f'] = {
      \ 'name' : '+find' ,
      \ '.' : [':Telescope filetypes'                   , 'filetypes'],
      \ 'B' : [':Telescope git_branches'                , 'git branches'],
      \ 'd' : [':Telescope lsp_document_diagnostics'    , 'document_diagnostics'],
      \ 'D' : [':Telescope lsp_workspace_diagnostics'   , 'workspace_diagnostics'],
      \ 'f' : [':Telescope find_files'                  , 'find files'],
      \ 'g' : [':Telescope git_files'                   , 'find git files'],
      \ 'h' : [':Telescope command_history'             , 'history'],
      \ 'i' : [':Telescope media_files'                 , 'media files'],
      \ 'm' : [':Telescope marks'                       , 'marks'],
      \ 'M' : [':Telescope man_pages'                   , 'man_pages'],
      \ 'o' : [':Telescope vim_options'                 , 'vim_options'],
      \ 't' : [':Telescope live_grep'                   , 'text'],
      \ 'r' : [':Telescope registers'                   , 'registers'],
      \ 'w' : [':Telescope file_browser'                , 'buf_fuz_find'],
      \ 'b' : [':Telescope buffers'                     , 'buffers'],
      \ }

" t is for terminal
let g:which_key_map_leader['t'] = {
      \ 'name' : '+terminal' ,
      \ ';' : [':FloatermNew --wintype=normal --height=6'       , 'terminal'],
      \ 'g' : [':FloatermNew lazygit'                           , 'git'],
      \ 'd' : [':FloatermNew lazydocker'                        , 'docker'],
      \ 't' : [':FloatermToggle'                                , 'toggle'],
      \ 'r' : [':FloatermNew ranger'                            , 'ytop'],
      \ 'h' : [':FloatermNew htop'                              , 'ytop'],
      \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Which Key "," Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

let g:which_key_map_localleader = {}

" Map localleader to which_key
nnoremap <silent> <localleader> :silent <c-u> :silent WhichKey ','<CR>
vnoremap <silent> <localleader> :silent <c-u> :silent WhichKeyVisual ','<CR>

let g:which_key_map_localleader['.'] = [':lcd %:p:h', 'set working dir']
let g:which_key_map_localleader['b'] = [':split', 'horizontal split']
let g:which_key_map_localleader['v'] = [':vsplit', 'vertical split']
let g:which_key_map_localleader['c'] = [':let @+= expand("%")', 'copy current dir to clipboard']

"""""""""""""""""""""""""""""""""""""""""""""""""""
" Register Which Key Mapping
"""""""""""""""""""""""""""""""""""""""""""""""""""

call which_key#register('<Space>', "g:which_key_map_leader")
call which_key#register('<VisualBindings>', "g:which_key_map_leader_visual")
call which_key#register(',', "g:which_key_map_localleader")

