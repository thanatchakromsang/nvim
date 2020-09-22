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
" }}}

" File Manager {{{
  call dein#add('scrooloose/nerdtree')
" }}}

" Sensible {{{
  call dein#add('wellle/targets.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-abolish')
  call dein#add('justinmk/vim-sneak')
  call dein#add('sgur/vim-editorconfig')
  call dein#add('sheerun/vim-polyglot')
" }}}

" Autocomplete {{{
  call dein#add('neoclide/coc.nvim', {'merged':0, 'rev': 'release'})
	let g:coc_global_extensions = ['coc-json', 'coc-go', 'coc-rls', 'coc-sh', 'coc-python', 'coc-solargraph', 'coc-docker', 'coc-snippets', 'coc-yaml', 'coc-tsserver']
" }}}

" Fast Motion {{{
  call dein#add('easymotion/vim-easymotion')
  call dein#add('haya14busa/incsearch.vim')
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
  call dein#add('airblade/vim-gitgutter')
  call dein#add('Xuyuanp/nerdtree-git-plugin')
" }}}

" Linter {{{
  call dein#add('w0rp/ale')
" }}}

" Misc plugin {{{
  call dein#add('Konfekt/FastFold')
  call dein#add('chakrit/vim-thai-keys')
  call dein#add('Shougo/context_filetype.vim')
  call dein#add('mhinz/vim-sayonara')
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

" Give more space for displaying messages.
  set cmdheight=2

  let uname = system('uname')

  if uname =~ 'Linux'
    if (has('nvim'))
      let g:python_host_prog = '/usr/bin/python2'
      let g:python3_host_prog = '/usr/bin/python3'
    endif
  elseif uname =~ 'Darwin'
    if (has('nvim'))
      let g:python_host_prog = '/usr/local/bin/python2.7'
      let g:python3_host_prog = '/usr/local/bin/python3.8'
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
	set nowritebackup
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

" Give more space for displaying messages.
  set cmdheight=2

" word wrapping, but only line breaks inserted when explicitly press enter
  set wrap
  set linebreak
  set nolist

  set formatoptions+=t

" reload unchanged files automatically
  set autoread

" set update time for some plugins (default is 4000)
  set updatetime=300

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
  set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
	if has("patch-8.1.1564")
		" Recently vim can merge signcolumn and number column into one
		set signcolumn=number
	else
		set signcolumn=yes
	endif

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

" " disable Arrow keys in Escape mode
"   map <up> <nop>
"   map <down> <nop>
"   map <left> <nop>
"   map <right> <nop>

" " disable Arrow keys in Insert mode
"   imap <up> <nop>
"   imap <down> <nop>
"   imap <left> <nop>
"   imap <right> <nop>

" Sneak
  map s <Plug>Sneak_s
  map S <Plug>Sneak_S
  map f <Plug>Sneak_f
  map F <Plug>Sneak_F
  map t <Plug>Sneak_t
  map T <Plug>Sneak_T

" Dein update
  nnoremap <silent> <leader>u :call dein#update()<CR>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
	inoremap <silent><expr> <TAB>
				\ pumvisible() ? "\<C-n>" :
				\ <SID>check_back_space() ? "\<TAB>" :
				\ coc#refresh()
	inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

" Use <c-space> to trigger completion.
	if has('nvim')
		inoremap <silent><expr> <c-space> coc#refresh()
	else
		inoremap <silent><expr> <c-@> coc#refresh()
	endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
	if exists('*complete_info')
		inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
	else
		inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
	endif

	" Use `[g` and `]g` to navigate diagnostics
	" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
	nmap <silent> [g <Plug>(coc-diagnostic-prev)
	nmap <silent> ]g <Plug>(coc-diagnostic-next)

	" GoTo code navigation.
	nmap <silent> gd <Plug>(coc-definition)
	nmap <silent> gy <Plug>(coc-type-definition)
	nmap <silent> gi <Plug>(coc-implementation)
	nmap <silent> gr <Plug>(coc-references)

	" " Use K to show documentation in preview window.
	" nnoremap <silent> K :call <SID>show_documentation()<CR>

	function! s:show_documentation()
		if (index(['vim','help'], &filetype) >= 0)
			execute 'h '.expand('<cword>')
		else
			call CocActionAsync('doHover')
		endif
	endfunction

" Highlight the symbol and its references when holding the cursor.
	autocmd CursorHold * silent call CocActionAsync('highlight')

	augroup mygroup
		autocmd!
		" Setup formatexpr specified filetype(s).
		autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
		" Update signature help on jump placeholder.
		autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
	augroup end

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

"}}}

" Programing language settings  ---------------------------------------------{{{

  " --------------------------  Javascript  ---------------------------------{{{

      augroup javascript
        autocmd!
        autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 colorcolumn=100
      augroup END

  "}}}

  " --------------------------  Python  -------------------------------------{{{

      let python_highlight_all = 1

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
  let g:NERDTreeGitStatusShowIgnored = 0
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

" Magit ----------------------------------------------------------------------{{{

  let g:magit_discard_untracked_do_delete=1

"}}}

" GitGutter ------------------------------------------------------------------{{{

  let g:gitgutter_map_keys = 0
  let g:gitgutter_highlight_lines = 0

"}}}

