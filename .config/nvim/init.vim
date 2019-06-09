"==============================="
" Author: Thanatchaya Kromsaeng "
"==============================="

" Setup dein  ---------------------------------------------------------------{{{

  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
      call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
      call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
	endif

set runtimepath+=~/.config/nvim/repos/github.com/Shougo/dein.vim/
if dein#load_state(('~/.config/nvim'))
  call dein#begin(expand('~/.config/nvim'))

" Plugin Manager {{{
  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')
" }}}

" Command Interface {{{
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('chemzqm/denite-git')
  call dein#add('chemzqm/denite-extra')
  call dein#add('Shougo/unite.vim')
" }}}

" File Manager {{{
  " call dein#add('mhinz/vim-startify')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/vimfiler.vim')
  " Search in Denite?
  call dein#add('junegunn/fzf')
" }}}

" Sensible {{{
  call dein#add('wellle/targets.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-commentary')
  call dein#add('justinmk/vim-sneak')
  call dein#add('sgur/vim-editorconfig')
" }}}

" Fast Motion {{{
  call dein#add('easymotion/vim-easymotion')
  " call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('terryma/vim-multiple-cursors')
" }}}

" Colorscheme {{{
  call dein#add('morhetz/gruvbox')
" }}}

" Appearance {{{
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('Yggdroot/indentLine')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('drzel/vim-line-no-indicator')
" }}}

" Terminal {{{
  call dein#add('Shougo/deol.nvim')
  call dein#add('christoomey/vim-tmux-navigator')
" }}}

" Git {{{
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  call dein#add('jreybert/vimagit', {'on_cmd': ['Magit', 'MagitOnly']})
  call dein#add('neoclide/vim-easygit')
  call dein#add('lambdalisue/gina.vim')
  call dein#add('junegunn/gv.vim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
  call dein#add('mattn/webapi-vim')
  call dein#add('mattn/gist-vim')
  call dein#add('junegunn/gv.vim')
" }}}

" Syntax and Language Specific {{{
  " i3
  call dein#add('PotatoesMaster/i3-vim-syntax')
  " HTML
  call dein#add('othree/html5.vim')
  call dein#add('mattn/emmet-vim')
  " CSS
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('othree/csscomplete.vim')
  " Javascript
  " call dein#add('othree/yajs.vim')
  " call dein#add('othree/jspc.vim', {'on_ft': ['javascript.jsx', 'javascript']})
  " call dein#add('othree/es.next.syntax.vim', {'on_ft': ['javascript.jsx', 'javascript']})
  call dein#add('pangloss/vim-javascript', {'on_ft': ['javascript.jsx', 'javascript']})
  call dein#add('carlitux/deoplete-ternjs', {'build': 'npm install -g tern'})
  call dein#add('mxw/vim-jsx')
  " Typescript
  call dein#add('HerringtonDarkholme/yats.vim')
  " call dein#add('mhartington/nvim-typescript', {'on_ft': 'typescript'}, {'build': './install.sh'})
  " call dein#add('ianks/vim-tsx')
  " Graphql
  call dein#add('jparise/vim-graphql')
  " JSON
  call dein#add('elzr/vim-json')
  call dein#add('Quramy/vison')
  " Markdown
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
  call dein#add('dhruvasagar/vim-table-mode')
  call dein#add('JamshedVesuna/vim-markdown-preview', {'on_ft': 'markdown'})
  " Python
  "" Need to fix override <leader>g
  call dein#add('hdima/python-syntax', {'on_ft': 'python'})
  call dein#add('zchee/deoplete-jedi', {'on_ft': 'python'})
  call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
  " " Golang
  " call dein#add('fatih/vim-go')
  " call dein#add('zchee/deoplete-go', {'build': 'make'})
  " " Haskell
  call dein#add('neovimhaskell/haskell-vim', {'on_ft': 'haskell'})
" }}}

" Linter {{{
  call dein#add('w0rp/ale')
" }}}

" Code Completion {{{
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/echodoc.vim')
" }}}

" Snippets {{{
  call dein#add('honza/vim-snippets')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
" }}}

" Formatter {{{
  call dein#add('sbdchd/neoformat')
" }}}

" Misc plugin {{{
  call dein#add('Konfekt/FastFold')
  call dein#add('junegunn/limelight.vim')
  call dein#add('chakrit/vim-thai-keys')
  call dein#add('xolox/vim-misc')
  call dein#add('tbabej/taskwiki')
  call dein#add('vimwiki/vimwiki')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('sgeb/vim-diff-fold')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('mhinz/vim-sayonara')
  call dein#add('junegunn/goyo.vim')
  call dein#add('amix/vim-zenroom2')
  call dein#add('majutsushi/tagbar')
" }}}

" iTerm
  call dein#add('sjl/vitality.vim')

  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  call dein#save_state()
endif

" }}}

" System settings  ----------------------------------------------------------{{{

" Neovim Settings
  set encoding=utf-8

  if has('mouse')
    set mouse=a
  endif

  let uname = system('uname')

  if uname =~ 'Linux'
    if (has('nvim'))
      let g:python_host_prog = '/usr/bin/python2'
      let g:python3_host_prog = '/usr/bin/python3'
    endif
  elseif uname =~ 'Darwin'
    if (has('nvim'))
      let g:python_host_prog = '/usr/local/bin/python2.7'
      let g:python3_host_prog = '/usr/local/bin/python3.7'
    endif
  endif

" show results of substition as they're happening
" but don't open a split
  set inccommand=nosplit

" file type determines whether any plugins for scripts,
" indenting rules, or syntax highlighting are loaded
  filetype plugin indent on
  filetype plugin on

" enable syntax highlight
  syntax enable

" default config
  set tabstop=2 shiftwidth=2 expandtab softtabstop=2

  set scrolloff=10

" set case-insensitive search
  set ignorecase
  set smartcase

" yank to system clipboard
  set clipboard^=unnamed,unnamedplus
  set nopaste

" hidden no write since last change (add ! to override)
  set hidden
" automatic set title
  set title

" remove unwanted space
  autocmd BufWritePre * %s/\s\+$//e

" hide mode in statusline
  set noshowmode

" disable backup files
  set nobackup
  set noswapfile

" set width of gutter
  set numberwidth=1

" disable syntax conceal
  set conceallevel=0

" commandline completion
  set wildmenu
  set wildignore+=*/tmp/*,*.so,*.swp,
        \*.zip,*.pyc,*.db,*.sqlite

" display incomplete commands
  set laststatus=2

" word wrapping, but only line breaks inserted when explicitly press enter
  set wrap
  set linebreak
  set nolist

  set formatoptions+=t

" reload unchanged files automatically
  set autoread

" set update time for some plugins (default is 4000)
  set updatetime=500

" set 256color support
  set t_Co=256

" save undo info
  if !isdirectory($HOME."/.vim")
      call mkdir($HOME."/.vim", "", 0770)
  endif
  if !isdirectory($HOME."/.vim/undo-dir")
      call mkdir($HOME."/.vim/undo-dir", "", 0700)
  endif
  set undodir="$HOME/.vim/undo-dir"
  set undofile

" leader key
  let mapleader = ','

" remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif

" center buffer around cursor when opening files
  autocmd BufRead * normal zz

" .: Scan the current buffer
" w: Scan buffers from other windows
" b: Scan buffers from the buffer list
" u: Scan buffers that have been unloaded from the buffer list
" t: Tag completion
" i: Scan the current and included files
  set complete=.,w,b,u,t,i

" when enter insert mode change to current files dir
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)

" disable short messages
  set shortmess=at

" recognize filename in vim
" default isfname=@,48-57,/,.,-,_,+,,,#,$,%,~,=
  set isfname+={,}

" set variable specific to a files
" eg. /* vim: tw=60 ts=2: */
  set modelines=10

" special character for tab, trail, eol etc..
  set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
  set list

" fix backspace indent
  set backspace=indent,eol,start

" open new split panes to right and bottom, which feels more natural
  set splitright
  set splitbelow

" Silently execute an external command
" No 'Press Any Key to Contiue BS'
" from: http://vim.wikia.com/wiki/Avoiding_the_%22Hit_ENTER_to_continue%22_prompts
  command! -nargs=1 SilentCmd
  \ | execute ':silent !'.<q-args>
  \ | execute ':redraw!'

" }}}

" System mappings  ----------------------------------------------------------{{{

" no one is really happy until you have this shortcuts
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

" command history
  nnoremap q: <nop>
  nnoremap q/ <nop>
  nnoremap q? <nop>
  " nnoremap Q: q:
  " nnoremap Q/ q/
  " nnoremap Q? q?

" no need for ex mode
  nnoremap Q <nop>
  vnoremap // y/<C-R>"<CR>

" split
  noremap <leader>b :<C-u>split<CR>
  noremap <leader>v :<C-u>vsplit<CR>

" Set working directory
  nnoremap <leader>. :lcd %:p:h<CR>

" Navigate between display lines
  nnoremap <silent><expr> k      v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> j      v:count == 0 ? 'gj' : 'j'
  nnoremap <silent><expr> <Up>   v:count == 0 ? 'gk' : 'k'
  nnoremap <silent><expr> <Down> v:count == 0 ? 'gj' : 'j'

" copy current files path to clipboard
  nmap cp :let @+= expand("%") <cr>

" Neovim terminal mapping
" terminal 'normal mode'
  nnoremap <silent> <leader>sh :Deol<CR>
  tmap <esc> <c-\><c-n><esc><cr>

" Move around 'normal mode'
  noremap H ^
  noremap L $
  nnoremap <silent>J 5gj
  nnoremap <silent>K 5gk

" Move visual block 'visual mode'
  vnoremap J :m '>+1<CR>gv=gv
  vnoremap K :m '<-2<CR>gv=gv

" Align blocks of text and keep them selected
  vmap < <gv
  vmap > >gv
  nnoremap <silent> <esc> :noh<cr>

" Switching windows
  noremap <C-j> <C-w>j
  noremap <C-k> <C-w>k
  noremap <C-l> <C-w>l
  noremap <C-h> <C-w>h

  inoremap <c-f> <c-x><c-f>

" Copy to osx clipboard
  vnoremap <C-c> "*y<CR>
  " vnoremap y "*y<CR>
  noremap Y y$
  vnoremap y myy`y
  vnoremap Y myY`y
  noremap YY "+yy<CR>

" Override default behavior where vim will replace default register with copy
" from pasted
  xnoremap p pgvy

" Navigate buffer
  noremap <leader>z :bp<CR>
  noremap <S-Tab> :bp<CR>
  noremap <leader>x :bn<CR>
  noremap <Tab> :bn<CR>
"" Close buffer
  noremap <leader>c :bd!<CR>

" Multicursor
  let g:multi_cursor_next_key='<C-n>'
  let g:multi_cursor_prev_key='<C-p>'
  let g:multi_cursor_skip_key='<C-x>'
  let g:multi_cursor_quit_key='<Esc>'
  let g:multi_cursor_exit_from_visual_mode=0
  let g:multi_cursor_exit_from_insert_mode=0

" Incsearch
  let g:incsearch#auto_nohlsearch = 1
  map n  <Plug>(incsearch-nohl-n)
  map N  <Plug>(incsearch-nohl-N)
  map *  <Plug>(incsearch-nohl-*)
  map #  <Plug>(incsearch-nohl-#)
  map g* <Plug>(incsearch-nohl-g*)
  map g# <Plug>(incsearch-nohl-g#)
  map /  <Plug>(incsearch-forward)
  map ?  <Plug>(incsearch-backward)
  map s/ <Plug>(incsearch-stay)

" disable Arrow keys in Escape mode
  map <up> <nop>
  map <down> <nop>
  map <left> <nop>
  map <right> <nop>

" disable Arrow keys in Insert mode
  imap <up> <nop>
  imap <down> <nop>
  imap <left> <nop>
  imap <right> <nop>

" Tagbar
  nmap <silent> <F3> :TagbarToggle<CR>
  let g:tagbar_autofocus = 1
  let g:tagbar_left = 1

" Sneak
  map s <Plug>Sneak_s
  map S <Plug>Sneak_S
  map f <Plug>Sneak_f
  map F <Plug>Sneak_F
  map t <Plug>Sneak_t
  map T <Plug>Sneak_T

"}}}"

" Appearance settings  ------------------------------------------------------{{{

" show the cursor position all the time
  set ruler
  set cursorline
  set relativenumber
  set number
  set fillchars=""

  " IndentLine  ----------------------------------------------------------{{{

    let g:indentLine_enabled = 1
    let g:indentLine_color_term = 239
    " let g:indentLine_bgcolor_term = 236
    " let g:indentLine_leadingSpaceEnabled = 1
    let g:indentLine_concealcursor = 'inc'
    let g:indentLine_conceallevel = 2
    let g:indentLine_char = '│'
    let g:indentLine_leadingSpaceChar = '·'
    let g:indentLine_fileTypeExclude = ['nerdtree']
    autocmd FileType help,nerdtree,vimwiki IndentLinesDisable

  "}}}

  " Airline  -------------------------------------------------------------{{{

    let g:airline_section_z ='%{LineNoIndicator()}%\ :%2c'
    let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'x', 'z' ]
      \ ]
    let g:webdevicons_enable_airline_statusline = 0
    let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'V',
      \ '' : 'V',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }

    let g:airline#extensions#tabline#buffer_idx_mode = 1
    let g:airline#extensions#tabline#buffer_idx_format = {
      \ '1': ' 1: ',
      \ '2': ' 2: ',
      \ '3': ' 3: ',
      \ '4': ' 4: ',
      \ '5': ' 5: ',
      \ '6': ' 6: ',
      \ '7': ' 7: ',
      \ '8': ' 8: ',
      \ '9': ' 9: ',
      \}

    set hidden
    let g:airline_theme = 'gruvbox'
    let g:airline#extensions#branch#enabled = 1
    let g:airline#extensions#tagbar#enabled = 1
    let g:airline#extensions#ale#enabled = 1
    let g:airline#extensions#branch#format = 0
    let g:airline_skip_empty_sections = 1
    let g:airline_detect_spelllang=0
    let g:airline#extensions#hunks#enabled = 0
    let g:airline#extensions#wordcount#enabled = 0
    let g:airline#extensions#whitespace#enabled = 0

    let g:webdevicons_enable_airline_statusline = 0
    if !exists('g:airline_symbols')
      let g:airline_symbols = {}
    endif

    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#fnamemod = ':t'
    let g:airline_powerline_fonts = 1
    let g:airline_symbols.branch = ''
    let g:airline_symbols.readonly = ''

    " powerline symbols
    let g:airline_left_sep = ''
    let g:airline_left_alt_sep = ''
    let g:airline_right_sep = ''
    let g:airline_right_alt_sep = ''

    let g:airline#extensions#branch#prefix     = '⤴' "➔, ➥, ⎇
    let g:airline#extensions#readonly#symbol   = '⊘'
    " let g:airline#extensions#linecolumn#prefix = '¶'
    " let g:airline#extensions#paste#symbol      = 'ρ'

  "}}}

  " LineNoIndicator  -----------------------------------------------------{{{

      let g:line_no_indicator_chars = ['⎺', '⎻', '⎼', '⎽', '_']
      " let g:line_no_indicator_chars = [
      "   \  '█', '▇', '▆', '▅', '▄', '▃', '▂', '▁', ' '
      "   \  ]

  "}}}

  " Matchtag Always  -----------------------------------------------------{{{

      " let g:mta_filetypes = {
      "     \ 'html' : 1,
      "     \ 'xhtml' : 1,
      "     \ 'xml' : 1,
      "     \}

  "}}}

  " Vim-Devicons  --------------------------------------------------------{{{

    let g:NERDTreeGitStatusNodeColorization = 1
    " 
    let g:webdevicons_enable_denite = 0
    " let g:WebDevIconsOS = 'Darwin'
    " let g:WebDevIconsUnicodeDecorateFileNodes = 1
    " let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = ''
    " let g:WebDevIconsUnicodeDecorateFolderNodes = 1
    " let g:WebDevIconsUnicodeDecorateFolderNodesDefaultSymbol = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols = {} " needed
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['js'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['tsx'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['css'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['html'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['json'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['md'] = ''
    let g:WebDevIconsUnicodeDecorateFileNodesExtensionSymbols['sql'] = ''
    let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
    let g:webdevicons_conceal_nerdtree_brackets = 1

  "}}}

  " Limelight  ------------------------------------------------------------{{{

    let g:limelight_conceal_ctermfg = 1
    let g:limelight_conceal_ctermfg = 240

  "}}}

"}}}

" Themes  -------------------------------------------------------------------{{{

  colorscheme gruvbox
  set background=dark
    " " Override autocomplete colorscheme
    " hi Pmenu ctermfg=15 ctermbg=61 cterm=NONE
    " hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold

    " wallpaper background color
    hi Normal ctermbg=NONE ctermfg=NONE

    " hi CursorLine ctermbg=236
    " hi StatusLine ctermbg=235

  " " Custom ALE
    hi ALEErrorSign ctermbg=237
    hi ALEWarningSign ctermbg=237
  " " Search
  "   hi Search ctermfg=15 ctermbg=61 cterm=NONE
  "

  " " Sneak
  "   hi link Sneak Search

  " Taskwiki
  hi TaskWikiTaskPriority ctermbg=NONE ctermfg=1

"}}}

" Programing language settings  ---------------------------------------------{{{

  " --------------------------  Javascript  ---------------------------------{{{

      augroup javascript
        autocmd!
        autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 colorcolumn=100
      augroup END

      let g:jsx_ext_required = 0
      let g:jsdoc_allow_input_prompt = 1
      let g:jsdoc_input_description = 1
      let g:jsdoc_return=0
      let g:jsdoc_return_type=0
      let g:vim_json_syntax_conceal = 0
      " let g:tern#command = ['tern']
      " let g:tern#arguments = ['--persistent']
      " let g:tern_map_keys=1
      "
      let g:deoplete#sources#ternjs#tern_bin = 'tern'
      let g:deoplete#sources#ternjs#filetypes = [
                \ 'jsx',
                \ 'javascript.jsx',
                \ ]

      let g:deoplete#sources#ternjs#case_insensitive = 1
      let g:deoplete#sources#ternjs#docs = 1
      let g:deoplete#sources#ternjs#types = 1

  "}}}

  " --------------------------  Python  -------------------------------------{{{

      let python_highlight_all = 1
      " let g:jedi#auto_vim_configuration = 0
      " let g:jedi#documentation_command = "<leader>k"
      " let g:jedi#goto_assignments_command = "<leader>h"
      " let g:jedi#completions_enabled = 0

  "}}}

  " --------------------------  Typescript  ---------------------------------{{{

      augroup typescript
        autocmd!
        autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 colorcolumn=100
        autocmd FileType typescript map <silent> <leader>h :TSDoc <cr>
        autocmd FileType typescript map <silent> <leader>tt :TSType <cr>
        autocmd FileType typescript map <silent> <leader>r :Denite -buffer-name=TSDocumentSymbol TSDocumentSymbol <cr>
        autocmd FileType typescript map <silent> <leader>t :Denite -buffer-name=TSWorkspaceSymbol TSWorkspaceSymbol <cr>
      augroup END

      " autocmd FileType typescript setl omnifunc=TSComplete
      " let g:nvim_typescript#signature_complete=1
      let g:nvim_typescript#max_completion_detail=25
      let g:nvim_typescript#completion_mark=''
      " let g:nvim_typescript#default_mappings=1
      " let g:nvim_typescript#type_info_on_hold=1
      let g:nvim_typescript#javascript_support=1

      let g:nvim_typescript#kind_symbols = {
          \ 'keyword': 'keyword',
          \ 'class': '',
          \ 'interface': '',
          \ 'script': 'script',
          \ 'module': '',
          \ 'local class': 'local class',
          \ 'type': '',
          \ 'enum': '',
          \ 'enum member': '',
          \ 'alias': '',
          \ 'type parameter': 'type param',
          \ 'primitive type': 'primitive type',
          \ 'var': '',
          \ 'local var': '',
          \ 'property': '',
          \ 'let': '',
          \ 'const': '',
          \ 'label': 'label',
          \ 'parameter': 'param',
          \ 'index': 'index',
          \ 'function': '',
          \ 'local function': 'local function',
          \ 'method': '',
          \ 'getter': '',
          \ 'setter': '',
          \ 'call': 'call',
          \ 'constructor': '',
          \}

      let g:tagbar_type_typescript = {
        \ 'ctagstype': 'typescript',
        \ 'kinds': [
          \ 'c:classes',
          \ 'n:modules',
          \ 'f:functions',
          \ 'v:variables',
          \ 'v:varlambdas',
          \ 'm:members',
          \ 'i:interfaces',
          \ 'e:enums',
        \ ]
        \ }

      nnoremap <m-Enter> :TSGetCodeFix<CR>
  "}}}

  " --------------------------  MarkDown  -----------------------------------{{{

      autocmd FileType markdown noremap <leader>tm :TableModeToggle<CR>
      let g:table_mode_corner="|"
      let g:markdown_fold_override_foldtext = 0
      let g:markdown_syntax_conceal = 0

    " Vim markdown preview
    " FIXME: Disable due to tmux switch pane override
      " let vim_markdown_preview_hotkey='<C-k>'
      let vim_markdown_preview_use_xdg_open=1
      let vim_markdown_preview_github=1


  "}}}

  " --------------------------  HTML  ---------------------------------------{{{

      let g:neomake_html_enabled_makers = []
      let g:neoformat_enabled_html = ['htmlbeautify']

  "}}}

  " --------------------------  Latex  --------------------------------------{{{

    " let g:vimtex_compiler_latexrun_engines=1

  "}}}

  " --------------------------  Groovy  -------------------------------------{{{

      autocmd BufNewFile,BufRead Jenkinsfile setf groovy

  "}}}

  " --------------------------  Haskell  ------------------------------------{{{

      let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
      let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
      let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
      let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
      let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
      let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
      let g:haskell_backpack = 1                " to enable highlighting of backpack keywords

  "}}}

"}}}

" Linting -------------------------------------------------------------------{{{

  let g:ale_set_highlights = 0
  let g:ale_sign_error = '●'
  let g:ale_sign_warning = '•'
  let g:ale_echo_msg_error_str = '[E]'
  let g:ale_echo_msg_warning_str = '[W]'

  let g:airline#extensions#ale#error_symbol='● '
  let g:airline#extensions#ale#warning_symbol='•  '
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0

  let g:ale_fix_on_save = 1
  let g:ale_linters = {
        \ 'javascript': ['eslint'],
        \ 'typescript': ['tslint'],
        \ 'python': ['flake8'],
        \ 'css': ['stylelint'],
        \ }

  let g:ale_fixers = {
        \ 'javascript': ['eslint'],
        \ 'css': ['stylelint'],
        \ }

  let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
  " let g:ale_set_loclist = 0
  " let g:ale_set_quickfix = 1

"}}}

" Terminal settings  --------------------------------------------------------{{{

  " au BufEnter * if &buftype == 'terminal' | :startinsert | endif
  " autocmd BufEnter term://* startinsert
  autocmd TermOpen * set bufhidden=hide

" }}}

" NERDTree ------------------------------------------------------------------{{{

" Toggle NERDTree
  function! ToggleNERDTree()
    if @% != "" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
      :NERDTreeFind
    else
      :NERDTreeToggle
    endif
  endfunction

  augroup ntinit
    autocmd FileType nerdtree call s:nerdtreeinit()
  augroup END
  function! s:nerdtreeinit() abort
    nunmap <buffer> K
    nunmap <buffer> J
  endfunction

  nnoremap <silent> <F2> :call ToggleNERDTree()<CR>

  let NERDTreeShowHidden=1
  let g:NERDTreeWinSize=35
  let NERDTreeMinimalUI=1
  let NERDTreeHijackNetrw=1
  let NERDTreeCascadeSingleChildDir=0
  let NERDTreeCascadeOpenSingleChildDir=0
  let g:NERDTreeAutoDeleteBuffer=1
  let g:NERDTreeChDirMode=2
  let g:NERDTreeWinPos="right"
  let g:NERDTreeShowIgnoredStatus = 0
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeQuitOnOpen = 1
  let g:nerdtree_tabs_focus_on_files=1
  let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
  let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']

  let g:NERDTreeDirArrowExpandable = ''
  let g:NERDTreeDirArrowCollapsible = ''
  let g:NERDTreeGitStatusIndicatorMap = {
          \ 'Modified'  : '✹',
          \ 'Staged'    : '✚',
          \ 'Untracked' : '✭',
          \ 'Renamed'   : '➜',
          \ 'Unmerged'  : '═',
          \ 'Deleted'   : '✖',
          \ 'Dirty'     : '✗',
          \ 'Clean'     : '✔︎',
          \ 'Ignored'   : '',
          \ 'Unknown'   : '?'
          \ }

" esearch settings {{{

  " let g:esearch#cmdline#help_prompt = 1
  "   let g:esearch#cmdline#dir_icon = '  '
  "   let g:esearch = {
  "   \ 'adapter':    'ag',
  "   \ 'backend':    'nvim',
  "   \ 'out':        'win',
  "   \ 'batch_size': 1000,
  "   \ 'use':        ['visual', 'hlsearch', 'last'],
  "   \}

" }}}

"}}}

" Tmux  ---------------------------------------------------------------------{{{

  let g:tmux_navigator_no_mappings = 1
  " let g:tmux_navigator_save_on_switch = 2
  let g:tmux_navigator_disable_when_zoomed = 1

  nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
  nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
  nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
  nnoremap <silent> <C-l> :TmuxNavigateRight<cr>
  nnoremap <silent> <C-\> :TmuxNavigatePrevious<cr>

  tmap <C-h> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  tmap <C-\> <C-\><C-n>:TmuxNavigatePrevious<cr>

"}}}

" Fold function  ------------------------------------------------------------{{{

  function! MyFoldText() " {{{
      let line = getline(v:foldstart)
      let nucolwidth = &fdc + &number * &numberwidth
      let windowwidth = winwidth(0) - nucolwidth - 3
      let foldedlinecount = v:foldend - v:foldstart

      " expand tabs into spaces
      let onetab = strpart('          ', 0, &tabstop)
      let line = substitute(line, '\t', onetab, 'g')

      let line = strpart(line, 0, windowwidth - 2 -len(foldedlinecount))
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines')
      " let fillcharcount = windowwidth - len(line) - len(foldedlinecount) - len('lines   ')
      let fillcharcount = windowwidth - len(line)
      " return line . '…' . repeat(" ",fillcharcount) . foldedlinecount . ' Lines'
      return line . '⋯'. repeat(" ",fillcharcount)
  endfunction " }}}

  set foldtext=MyFoldText()

  autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
  autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif

  " autocmd FileType vim setlocal fdc=1
  set foldlevel=99

  " Space to toggle folds.
  nnoremap <Space> za
  vnoremap <Space> za
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevel=0

  autocmd FileType javascript,html,css,scss,typescript setlocal foldlevel=99

  autocmd FileType css,scss,json setlocal foldmethod=marker
  autocmd FileType css,scss,json setlocal foldmarker={,}

  autocmd FileType coffee setl foldmethod=indent
  " let g:xml_syntax_folding = 1
  autocmd FileType xml setl foldmethod=syntax

  autocmd FileType html setl foldmethod=expr
  autocmd FileType html setl foldexpr=HTMLFolds()

  autocmd FileType javascript,typescript,typescriptreact,json setl foldmethod=syntax

  autocmd FileType graphql setl foldmethod=syntax

  autocmd FileType git setlocal foldmethod=syntax
  autocmd FileType git setlocal foldlevel=0

" }}}

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#auto_complete_delay = 50
  let g:deoplete#auto_refresh_delay = 200
  let g:echodoc_enable_at_startup=1
  let g:deoplete#enable_smart_case = 1

  set completeopt+=noselect,menuone
  set completeopt-=preview
  " autocmd CompleteDone * pclose

  function! Multiple_cursors_before()
    let b:deoplete_disable_auto_complete=2
  endfunction
  function! Multiple_cursors_after()
    let b:deoplete_disable_auto_complete=0
  endfunction
  let g:deoplete#file#enable_buffer_path=1
  call deoplete#custom#source('buffer', 'mark', '[B]')
  call deoplete#custom#source('tern', 'mark', '[]')
  call deoplete#custom#source('omni', 'mark', '[⌾]')
  call deoplete#custom#source('file', 'mark', '[]')
  call deoplete#custom#source('jedi', 'mark', '[]')
  call deoplete#custom#source('neosnippet', 'mark', '[=]')
  call deoplete#custom#source('typescript',  'rank', 630)
  let g:deoplete#omni_patterns = {}
  let g:deoplete#omni_patterns.html = ''
  let g:deoplete#omni_patterns.css = ''
  function! Preview_func()
    if &pvw
      setlocal nonumber norelativenumber
     endif
  endfunction
  autocmd WinEnter * call Preview_func()
  " let g:deoplete#ignore_sources = {}
  " let g:deoplete#ignore_sources._ = ['around']
  let g:deoplete#ignore_sources = {'_': ['around', 'buffer' ]}

  " let g:deoplete#enable_debug = 1
  " let g:deoplete#enable_profile = 1
  " let g:deoplete#enable_logging = {'level': 'DEBUG','logfile': 'deoplete.log'}
  " call deoplete#enable_logging('DEBUG', 'deoplete.log')
  " call deoplete#custom#source('typescript', 'debug_enabled', 1)

"}}}

" Snipppets -----------------------------------------------------------------{{{

" Enable snipMate compatibility feature.
  let g:neosnippet#enable_snipmate_compatibility = 1
  " let g:neosnippet#snippets_directory='~/GitHub/ionic-snippets'
  let g:neosnippet#expand_word_boundary = 1
  let g:neosnippet#snippets_directory='~/.dotfiles/nvim/snippets'

  imap <C-k>     <Plug>(neosnippet_expand_or_jump)
  smap <C-k>     <Plug>(neosnippet_expand_or_jump)
  xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
  " imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  " \ "\<Plug>(neosnippet_expand_or_jump)"
  " \: pumvisible() ? "\<C-n>" : "\<TAB>"
  " imap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<S-TAB>"
  " smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
  " \ "\<Plug>(neosnippet_expand_or_jump)"
  " \: "\<TAB>"

"}}}

" Denite --------------------------------------------------------------------{{{

  let s:menus = {}
  call denite#custom#option('_', {
        \ 'prompt': '❯',
        \ 'winheight': 15,
        \ 'updatetime': 1,
        \ 'auto_resize': 0,
        \ 'highlight_matched_char': 'Character',
        \ 'highlight_matched_range': 'Character',
        \ 'reversed': 1,
        \ 'smartcase': 1,
        \})

  call denite#custom#option('TSDocumentSymbol', {
        \ 'prompt': ' @' ,
        \})
  call denite#custom#option('TSWorkspaceSymbol', {
        \ 'prompt': ' #' ,
        \})

  " call denite#custom#source('file_rec', 'vars', {
  "       \ 'command': [
  "       \ 'ag', '--follow','--nogroup', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'node_modules',
  "       \ '--ignore', '*.jpg', '--ignore', '*.desktop'
  "       \] })
  call denite#custom#source('file_rec', 'vars', {
      \'command': ['rg', '--files', '--glob', '!.git'],
      \'sorters':['sorter_sublime'],
      \'matchers': ['matches_cpsm']
      \})

  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('file_rec', 'matchers', ['matcher_fuzzy'])

      " call denite#custom#var('grep', 'command', [
      "       \ 'rg', '--ignore', 'node_modules', '--ignore', '.git'
      "       \ ])
      " call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
      " call denite#custom#var('grep', 'recursive_opts', [])
      " call denite#custom#var('grep', 'pattern_opt', [])
      " call denite#custom#var('grep', 'separator', ['--'])
      " call denite#custom#var('grep', 'final_opts', [])

  call denite#custom#source('grep', 'vars', {
    \'command': ['rg'],
    \'default_opts': ['-i', '--vimgrep'],
    \'recursive_opts': [],
    \'pattern_opt': [],
    \'separator': ['--'],
    \'final_opts': [],
    \})

      nnoremap <silent> <leader>e :Denite file_rec<CR>
      nnoremap <silent> <C-p> :Denite file_rec<CR>

      nnoremap <silent> <leader>f :Denite grep:::!<CR>
      nnoremap <silent> <F4> :Denite grep:::!<CR>

      " nnoremap <silent> <leader>h :Denite help<CR>
      nnoremap <silent> B :Denite buffer<CR>
      nnoremap <silent> <leader>u :call dein#update()<CR>

      nnoremap <silent> <F1> :Denite menu:commands<CR>

  call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
	call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')

  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
  call denite#custom#var('menu', 'menus', s:menus)

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"}}}

" Denite : Commands  ---------------------------------------------------------{{{

  let s:menus.commands = {
    \ 'description' : 'General command',
    \}
  let s:menus.commands.command_candidates = [
    \[' ❯ :Gist                              | Upload current file to gist.github',  'Gist'],
    \[' ❯ :Limelight!!                       | Dim surrounding light',               'Limelight!!'],
    \[' ❯ :Goyo                              | Toggle Focus mode',                   'Goyo'],
    \[' ❯ :LeadingSpaceToggle                | Toggle leading dots',                 'LeadingSpaceToggle'],
    \[' ❯ :IndentLinesToggle                 | Toggle indent line',                  'IndentLinesToggle'],
    \[' ❯ :colorscheme                       | Change colourscheme',                 'Denite colorscheme'],
    \[' ❯ :Magit                             | git status',                          'Magit'],
    \[' ❯ :Gvdiff                            | git diff',                            'Gvdiff'],
    \[' ❯ :Gcommit                           | git commit',                          'Gcommit'],
    \[' ❯ :Gwrite                            | git stage/add',                       'Gwrite'],
    \[' ❯ :Gread                             | git checkout',                        'Gread'],
    \[' ❯ :Git! push (current branch)        | git push current directory',          'Git! push'],
    \[' ❯ :Git! push (pick branch)           | git push (remote/branch:)',           'exe "Git! push " input("Push remote/branch: ")'],
    \[' ❯ :Git! pull (current branch)        | git pull current directory',          'Git! pull'],
    \[' ❯ :Git! pull (pick branch)           | git pull (remote/branch:)',           'exe "Git! pull " input("Pull remote/branch: ")'],
    \[' ❯ :Git! checkout (pick branch)       | git checkout (branch:)',              'exe "Git! checkout " input("Checkout branch: ")'],
    \[' ❯ :Gfetch                            | git fetch',                           'Gfetch'],
    \[' ❯ :Gbrowse                           | git browse',                          'Gbrowse'],
    \[' ❯ :Gblame                            | git blame',                           'Gblame'],
    \[' ❯ :Gedit HEAD^                       | git HEAD^',                            'Gedit HEAD^'],
    \[' ❯ :Denite gitbranch                  | git branch',                          'Denite gitbranch'],
    \[' ❯ :Denite gitlog:file                | git log current file',                'Denite gitlog:file'],
    \[' ❯ :GV                                | git log current repository',          'GV'],
    \[' ❯ :Glog                              | git log last commit',                 'Glog --'],
    \[' ❯ :MagitOnly                         | manage git commit',                   'MagitOnly'],
    \[' ❯ preview markdown           ⌘ [C-K] | Preview markdown',                    'call Vim_Markdown_Preview()'],
    \[' ❯ Vimwiki             ⌘ [,][w][,][i] | Generate VimwikiDiary Index', 'VimwikiDiaryGenerateLinks'],
    \[' ❯ Vimwiki             ⌘ [,][w][,][w] | Generate Today Diary', 'VimwikiMakeDiaryNote']
    \]

"}}}

" Emmet ----------------------------------------------------------------------{{{

" Remapping <C-y>, just doesn't cut it.
  function! s:expand_html_tab()
" try to determine if we're within quotes or tags.
" if so, assume we're in an emmet fill area.
   let line = getline('.')
   if col('.') < len(line)
     let line = matchstr(line, '[">][^<"]*\%'.col('.').'c[^>"]*[<"]')
     if len(line) >= 2
        return "\<C-n>"
     endif
   endif
" expand anything emmet thinks is expandable.
  if emmet#isExpandable()
    return emmet#expandAbbrIntelligent("\<tab>")
    " return "\<C-y>,"
  endif
" return a regular tab character
  return "\<tab>"
  endfunction
  " let g:user_emmet_expandabbr_key='<Tab>'
  " imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

  autocmd FileType html,css,scss,typescript.tsx imap <silent><buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,scss,typescript.tsx EmmetInstall

"}}}

" Vimwiki --------------------------------------------------------------------{{{

" disable Ale, Gutter
  autocmd FileType vimwiki :ALEDisable
  autocmd FileType vimwiki :GitGutterDisable


  " let g:vimwiki_folding = 'list'
  let g:vimwiki_list = [{'path': '~/Notes/',
                       \ 'syntax': 'markdown',
                       \ 'ext': '.md',
                       \ 'auto_diary_index': 1}]

  let g:vimwiki_ext2syntax = {'.md': 'markdown'}

  hi VimwikiHeader1 ctermfg=1
  hi VimwikiHeader2 ctermfg=2
  hi VimwikiHeader3 ctermfg=3
  hi VimwikiHeader4 ctermfg=4
  hi VimwikiHeader5 ctermfg=5
  hi VimwikiHeader6 ctermfg=6

  " TaskWiki
  let g:taskwiki_dont_preserve_folds="yes"
  let g:taskwiki_disable_concealcursor = 'yes'
  let g:taskwiki_markup_syntax = 'markdown'

"}}}

" Magit ----------------------------------------------------------------------{{{

  let g:magit_discard_untracked_do_delete=1

"}}}

" GitGutter ------------------------------------------------------------------{{{

  let g:gitgutter_map_keys = 0
  let g:gitgutter_highlight_lines = 0

"}}}

