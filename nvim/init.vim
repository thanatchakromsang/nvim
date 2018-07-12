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

" Plugin Manager
  call dein#add('Shougo/dein.vim')
  call dein#add('haya14busa/dein-command.vim')

" Command Interface
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('chemzqm/denite-git')
  call dein#add('chemzqm/denite-extra')
  call dein#add('Shougo/unite.vim')

" File Manager
  call dein#add('mhinz/vim-startify')
  call dein#add('scrooloose/nerdtree')
  call dein#add('Shougo/vimfiler.vim')
  " Search in Denite?
  call dein#add('junegunn/fzf')

" Sensible
  call dein#add('wellle/targets.vim')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('tpope/vim-commentary')
  call dein#add('justinmk/vim-sneak')

" Fast Motion
  call dein#add('easymotion/vim-easymotion')
  call dein#add('haya14busa/incsearch-easymotion.vim')
  call dein#add('haya14busa/incsearch.vim')
  call dein#add('terryma/vim-multiple-cursors')

" Colorscheme
  call dein#add('dracula/vim')
  call dein#add('majutsushi/tagbar')

" Appearance
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('Yggdroot/indentLine')
  call dein#add('ryanoasis/vim-devicons')
  call dein#add('drzel/vim-line-no-indicator')

" Terminal
  call dein#add('Shougo/deol.nvim')
  call dein#add('christoomey/vim-tmux-navigator')

" Git
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

" Syntax and Language Specific
  " HTML
  call dein#add('othree/html5.vim')
  call dein#add('mattn/emmet-vim')
  " CSS
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('othree/csscomplete.vim')
  " Javascript
  call dein#add('othree/yajs.vim')
  call dein#add('othree/jspc.vim', {'on_ft': ['javascript.jsx', 'javascript']})
  call dein#add('othree/es.next.syntax.vim', {'on_ft': ['javascript.jsx', 'javascript']})
  call dein#add('carlitux/deoplete-ternjs', {'build': 'npm install -g tern'})
  call dein#add('mxw/vim-jsx')
  " Typescript
  call dein#add('mhartington/nvim-typescript', {'on_ft': 'typescript'})
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('ianks/vim-tsx')
  " Graphql
  call dein#add('jparise/vim-graphql')
  " JSON
  call dein#add('elzr/vim-json')
  call dein#add('Quramy/vison')
  " LaTex
  call dein#add('lervag/vimtex', {'on_ft': ['plaintex', 'tex']})
  call dein#add('moll/vim-node')
  " Markdown
  call dein#add('euclio/vim-markdown-composer', {'build': 'cargo build --release'})
  call dein#add('tpope/vim-markdown', {'on_ft': 'markdown'})
  call dein#add('nelstrom/vim-markdown-folding', {'on_ft': 'markdown'})
  call dein#add('dhruvasagar/vim-table-mode')
  " Python
  "" Need to fix override <leader>g
  call dein#add('zchee/deoplete-jedi')
  call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
  " Golang
  call dein#add('fatih/vim-go')
  call dein#add('zchee/deoplete-go', {'build': 'make'})

" Linter
  call dein#add('w0rp/ale')

" Code Completion
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/neco-vim')
  call dein#add('Shougo/neoinclude.vim')
  call dein#add('Shougo/echodoc.vim')

" Snippets
  call dein#add('honza/vim-snippets')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

" Formatter
  call dein#add('sbdchd/neoformat')

" Misc plugin
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
  " Search and Replace <leader>ff
  " call dein#add('eugen0329/vim-esearch')

" iTerm
  call dein#add('sjl/vitality.vim')

  if dein#check_install()
    call dein#install()
    let pluginsExist=1
  endif

  call dein#end()
  call dein#save_state()
endif
  filetype plugin indent on
  syntax enable

" }}}

" System settings  ----------------------------------------------------------{{{

" Neovim Settings
  set encoding=utf-8

	" if &term =~ '256color'
	" 	" disable background color erase
	" 	set t_ut=
	" endif

	if has('mouse')
		set mouse=a
	endif

  filetype on
  " let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
  " set guicursor=n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20
  set tabstop=2 shiftwidth=2 expandtab softtabstop=2
  set scrolloff=10
  set ignorecase
  set smartcase
  set clipboard+=unnamedplus
  set nopaste
  set hidden
  set title
  autocmd BufWritePre * %s/\s\+$//e
  set noshowmode
  set nobackup
  set noswapfile
  set numberwidth=1
  set conceallevel=0
  set virtualedit=
  set wildmenu
  set laststatus=2                    " display incomplete commands
  set wrap linebreak
  set wildmode=list:longest,list:full
  set wildignore+=*/tmp/*,*.so,*.swp,
        \*.zip,*.pyc,*.db,*.sqlite
  set autoread                        " Reload unchanged files automatically.
  set updatetime=500
  set t_Co=256
  let mapleader = ','                 " Leader key
  set undofile
  set undodir="$HOME/.VIM_UNDO_FILES"
" Remember cursor position between vim sessions
  autocmd BufReadPost *
              \ if line("'\"") > 0 && line ("'\"") <= line("$") |
              \   exe "normal! g'\"" |
              \ endif
              " center buffer around cursor when opening files
  autocmd BufRead * normal zz
  set complete=.,w,b,u,t,k
  autocmd InsertEnter * let save_cwd = getcwd() | set autochdir
  autocmd InsertLeave * set noautochdir | execute 'cd' fnameescape(save_cwd)
  set formatoptions+=t
  set shortmess=atIc
  set isfname-==

  " Use modeline overrides
  " set modeline
  set modelines=10

  set listchars=tab:‣\ ,trail:·,precedes:«,extends:»,eol:¬
  set list

  " Fix backspace indent
  set backspace=indent,eol,start

  " Sayonara as :x
  cnoreabbrev <silent> <expr> x getcmdtype() == ":" && getcmdline() == 'x' ? 'Sayonara' : 'x'
  " Open new split panes to right and bottom, which feels more natural
  set splitright
  set splitbelow

	if (has('nvim'))
		let g:python_host_prog = '/usr/bin/python2'
		let g:python3_host_prog = '/usr/bin/python3'
		" show results of substition as they're happening
		" but don't open a split
		set inccommand=nosplit
	endif

  autocmd FileType vimwiki :ALEDisable
  autocmd FileType vimwiki :GitGutterDisable

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

" Command history
  nnoremap q: <nop>
  nnoremap q/ <nop>
  nnoremap q? <nop>
  " nnoremap Q: q:
  " nnoremap Q/ q/
  " nnoremap Q? q?

" No need for ex mode
  nnoremap Q <nop>
  vnoremap // y/<C-R>"<CR>

" Split
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
  noremap L g_
  nnoremap <silent>J 5j
  nnoremap <silent>K 5k

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

" this is the best, let me tell you why
" how annoying is that everytime you want to do something in vim
" you have to do shift-; to get :, can't we just do ;?
" Plus what does ; do anyways??
" if you do have a plugin that needs ;, you can just swap the mapping
" nnoremap : ;
" give it a try and you will like it
  " nnoremap ; :
  inoremap <c-f> <c-x><c-f>

" Copy to osx clipboard
  vnoremap <C-c> "*y<CR>
  " vnoremap y "*y<CR>
  noremap Y y$
  vnoremap y myy`y
  vnoremap Y myY`y
  noremap YY "+yy<CR>

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

" Incsearch-easymotion
  map /  <Plug>(incsearch-easymotion-/)
  map ?  <Plug>(incsearch-easymotion-?)
  map s/ <Plug>(incsearch-easymotion-stay)

" " Disable Arrow keys in Escape mode
" map <up> <nop>
" map <down> <nop>
" map <left> <nop>
" map <right> <nop>

" " Disable Arrow keys in Insert mode
" imap <up> <nop>
" imap <down> <nop>
" imap <left> <nop>
" imap <right> <nop>

" Tagbar
  nmap <silent> <F3> :TagbarToggle<CR>
  let g:tagbar_autofocus = 1
  let g:tagbar_left = 1

" Sneak
  map f <Plug>Sneak_s
  map F <Plug>Sneak_S

"}}}"

" Appearance settings  ------------------------------------------------------{{{

  set ruler         " show the cursor position all the time
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
      \ '' : 'V',
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
    let g:airline_theme = 'dracula'
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

  colorscheme dracula
    " Override autocomplete colorscheme
    hi Pmenu ctermfg=15 ctermbg=61 cterm=NONE
    hi PmenuSel ctermfg=16 ctermbg=84 cterm=bold
    hi Normal ctermbg=NONE ctermfg=NONE
    hi CursorLine ctermbg=236
    hi StatusLine ctermbg=235

  " Custom ALE
    hi ALEErrorSign ctermfg=88 ctermbg=none
    hi ALEWarningSign ctermfg=228 ctermbg=none
  " Search
    hi Search ctermfg=15 ctermbg=61 cterm=NONE

  " Sneak
    hi link Sneak Search

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
      let g:jedi#documentation_command = "<leader>k"
      let g:jedi#goto_assignments_command = "<leader>h"
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
      let g:nvim_typescript#max_completion_detail=100
      let g:nvim_typescript#completion_mark=''
      " let g:nvim_typescript#default_mappings=1
      " let g:nvim_typescript#type_info_on_hold=1
      " let g:nvim_typescript#javascript_support=1

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

  "}}}

  " --------------------------  MarkDown  -----------------------------------{{{

      autocmd FileType markdown noremap <leader>tm :TableModeToggle<CR>
      let g:table_mode_corner="|"
      let g:markdown_fold_override_foldtext = 0
      let g:markdown_syntax_conceal = 0

  "}}}

  " --------------------------  HTML  ---------------------------------------{{{

      let g:neomake_html_enabled_makers = []
      let g:neoformat_enabled_html = ['htmlbeautify']

  "}}}

"}}}

" Linting -------------------------------------------------------------------{{{

  " call neomake#configure#automake({
  " \ 'BufWritePost': {'delay': 0},
  " \ }, 1000)

  " \ 'BufWinEnter': {},
  " \ 'TextChanged': {},
  " \ 'InsertLeave': { },

  let g:ale_set_highlights = 0
  let g:ale_sign_error = '●'
  let g:ale_sign_warning = '•'
  let g:ale_echo_msg_error_str = 'E'
  let g:ale_echo_msg_warning_str = 'W'

  let g:airline#extensions#ale#error_symbol='● '
  let g:airline#extensions#ale#warning_symbol='•  '
  let g:ale_lint_on_save = 1
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_lint_on_enter = 0

  let g:ale_fix_on_save = 1
  let g:ale_linters = {
        \ 'javascript': ['eslint'],
        \ 'typescript': ['tslint', 'tsserver'],
        \ 'python': ['flake8'],
        \ 'css': ['stylelint'],
        \ }

  let g:ale_fixers = {
        \ 'javascript': ['eslint'],
        \ 'typescript': ['tslint'],
        \ 'python': ['autopep8'],
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
		function! ToggleNerdTree()
			if @% != "" && (!exists("g:NERDTree") || (g:NERDTree.ExistsForTab() && !g:NERDTree.IsOpen()))
				:NERDTreeFind
			else
				:NERDTreeToggle
			endif
		endfunction

  let g:vimfiler_ignore_pattern = ""
  " map <silent> - :VimFiler<CR>
  nnoremap <silent> <F2> :call ToggleNerdTree()<CR>
	let g:vimfiler_tree_leaf_icon = ''
	" let g:vimfiler_tree_opened_icon = ''
	" let g:vimfiler_tree_closed_icon = ''
	let g:vimfiler_file_icon = ''
	let g:vimfiler_marked_file_icon = '*'
  let g:vimfiler_expand_jump_to_first_child = 0
  " let g:vimfiler_as_default_explorer = 1
  call unite#custom#profile('default', 'context', {
              \'direction': 'botright',
              \ })
  call vimfiler#custom#profile('default', 'context', {
              \ 'explorer' : 1,
              \ 'winwidth' : 45,
              \ 'winminwidth' : 45,
              \ 'toggle' : 1,
              \ 'auto_expand': 0,
              \ 'parent': 1,
              \ 'explorer_columns': 'devicons:git',
              \ 'status' : 0,
              \ 'safe' : 0,
              \ 'split' : 1,
              \ 'hidden': 1,
              \ 'no_quit' : 1,
              \ 'force_hide' : 0,
              \ })
  augroup vfinit
    autocmd FileType vimfiler call s:vimfilerinit()
    autocmd FileType unite call s:uniteinit()
  augroup END
  function! s:uniteinit()
    nmap <buffer> <Esc> <Plug>(unite_exit)
  endfunction
  function! s:vimfilerinit()
      set nonumber
      set norelativenumber
      nmap <silent><buffer><expr> <CR> vimfiler#smart_cursor_map(
            \ "\<Plug>(vimfiler_expand_tree)",
            \ "\<Plug>(vimfiler_edit_file)"
            \)
      nnoremap <silent><buffer><expr> s vimfiler#do_switch_action('vsplit')
      nmap <silent> m :call NerdUnite()<cr>
      " nmap <silent> p <Plug>(vimfiler_jump_first_child)
      nmap <silent> r <Plug>(vimfiler_redraw_screen)
    endf
  let g:vimfiler_ignore_pattern = '^\%(\.git\|\.DS_Store\)$'
  let g:webdevicons_enable_vimfiler = 0
  let g:vimfiler_no_default_key_mappings=1
  function! NerdUnite() abort "{{{
    let marked_files =  vimfiler#get_file(b:vimfiler)
    call unite#start(['nerd'], {'file': marked_files})
	endfunction "}}}

  augroup ntinit
    autocmd FileType nerdtree call s:nerdtreeinit()
  augroup END
  function! s:nerdtreeinit() abort
      nunmap <buffer> K
      nunmap <buffer> J
  endf
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

  tmap <C-j> <C-\><C-n>:TmuxNavigateDown<cr>
  tmap <C-k> <C-\><C-n>:TmuxNavigateUp<cr>
  tmap <C-l> <C-\><C-n>:TmuxNavigateRight<cr>
  tmap <C-h> <C-\><C-n>:TmuxNavigateLeft<CR>
  " tmap <C-\> <C-\><C-n>:TmuxNavigatePrevious<cr>

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

  autocmd FileType javascript,typescript,json setl foldmethod=syntax

  autocmd FileType graphql setl foldmethod=syntax

  autocmd FileType git setlocal foldmethod=syntax
  autocmd FileType git setlocal foldlevel=0

" }}}

" Deoplete ------------------------------------------------------------------{{{

" enable deoplete
  let g:deoplete#enable_at_startup = 1
  let g:deoplete#auto_complete_delay = 50
  let g:echodoc_enable_at_startup=1
  let g:deoplete#enable_smart_case = 1

  set completeopt+=noselect,menuone
  set completeopt-=preview
  autocmd CompleteDone * pclose

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
  let g:deoplete#ignore_sources = {}
  let g:deoplete#ignore_sources._ = ['around']

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

" Denite  -------------------------------------------------------------------{{{

  let s:menus = {}
  call denite#custom#option('_', {
        \ 'prompt': '❯',
        \ 'winheight': 13,
        \ 'updatetime': 100,
        \ 'auto_resize': 0,
        \ 'highlight_matched_char': 'Character',
        \ 'highlight_matched_range': 'Character',
        \ 'reversed': 1,
        \ 'smartcase': 1,
        \})

  call denite#custom#option('TSDocumentSymbol', {
        \ 'prompt': ' @' ,
        \ 'reversed': 0,
        \})
  call denite#custom#option('TSWorkspaceSymbol', {
        \ 'reversed': 0,
        \ 'prompt': ' #' ,
        \})

  call denite#custom#source('file_rec', 'vars', {
        \ 'command': [
        \ 'ag', '--follow','--nogroup', '--column', '-g', '', '--ignore', '.git', '--ignore', '*.png', '--ignore', 'node_modules',
        \ '--ignore', '*.jpg', '--ignore', '*.desktop'
        \] })

  call denite#custom#source('file_rec', 'sorters', ['sorter_sublime'])
  call denite#custom#source('file_rec', 'matchers', ['matcher_fuzzy'])

      call denite#custom#var('grep', 'command', [
            \ 'ag', '--ignore', 'node_modules', '--ignore', '.git'
            \ ])
      call denite#custom#var('grep', 'default_opts', ['-i', '--vimgrep'])
      call denite#custom#var('grep', 'recursive_opts', [])
      call denite#custom#var('grep', 'pattern_opt', [])
      call denite#custom#var('grep', 'separator', ['--'])
      call denite#custom#var('grep', 'final_opts', [])

      nnoremap <silent> <leader>e :Denite file_rec<CR>
      nnoremap <silent> <C-p> :Denite file_rec<CR>

      nnoremap <silent> <leader>f :Denite grep:::!<CR>
      nnoremap <silent> <F4> :Denite grep:::!<CR>

      " nnoremap <silent> <leader>h :Denite help<CR>
      nnoremap <silent>  B :Denite buffer<CR>
      nnoremap <silent> <leader>u :call dein#update()<CR>

      nnoremap <silent> <leader>m :Denite menu:commands<CR>
      nnoremap <silent> <leader>g :Denite menu:git<CR>

  call denite#custom#map('insert','<C-n>','<denite:move_to_next_line>','noremap')
	call denite#custom#map('insert','<C-p>','<denite:move_to_previous_line>','noremap')

  call denite#custom#filter('matcher_ignore_globs', 'ignore_globs',
    \ [ '.git/', '.ropeproject/', '__pycache__/',
    \   'venv/', 'images/', '*.min.*', 'img/', 'fonts/'])
  call denite#custom#var('menu', 'menus', s:menus)

  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

"}}}

"" Unite  -------------------------------------------------------------------{{{

"  let g:unite_winheight = 10
"  call unite#filters#matcher_default#use(['matcher_fuzzy'])
"  call unite#filters#sorter_default#use(['sorter_rank'])

"  let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})

"  let g:unite_source_menu_menus.git = {
"      \ 'description' : ' Git Interface'
"      \}
"  let g:unite_source_menu_menus.git.command_candidates = [
"      \[' git status', 'Gstatus'],
"      \[' git diff', 'Gvdiff'],
"      \[' git commit', 'Gcommit'],
"      \[' git stage/add', 'Gwrite'],
"      \[' git checkout', 'Gread'],
"      \[' git rm', 'Gremove'],
"      \[' git cd', 'Gcd'],
"      \[' git push', 'exe "Git! push " input("remote/branch: ")'],
"      \[' git pull', 'exe "Git! pull " input("remote/branch: ")'],
"      \[' git pull rebase', 'exe "Git! pull --rebase " input("branch: ")'],
"      \[' git checkout branch', 'exe "Git! checkout " input("branch: ")'],
"      \[' git fetch', 'Gfetch'],
"      \[' git merge', 'Gmerge'],
"      \[' git browse', 'Gbrowse'],
"      \[' git blame', 'Gblame'],
"      \[' git head', 'Gedit HEAD^'],
"      \[' git parent', 'edit %:h'],
"      \[' git branch', 'Denite gitbranch'],
"      \[' git log current file', 'Denite gitlog:file'],
"      \[' git log current repository', 'GV'],
"      \[' git log search by word', 'exe "GV -S " input("word: ")'],
"      \[' git manage by visualization', 'Magit'],
"      \[' git index', 'exe "Gedit " input("branchname\:filename: ")'],
"      \[' git mv', 'exe "Gmove " input("destination: ")'],
"      \[' git grep',  'exe "Ggrep " input("string: ")'],
"      \[' git prompt', 'exe "Git! " input("command: ")']
"      \]

""}}}

" Denite : Git  -------------------------------------------------------------{{{

  let s:menus.git = {
    \ 'description' : 'Git interface',
    \}

  let s:menus.git.command_candidates = [
    \[' [1]  ❯ :Magit                             | git status', 'Magit'],
    \[' [2]  ❯ :Gvdiff                            | git diff', 'Gvdiff'],
    \[' [3]  ❯ :Gcommit                           | git commit', 'Gcommit'],
    \[' [4]  ❯ :Gwrite                            | git stage/add', 'Gwrite'],
    \[' [5]  ❯ :Gread                             | git checkout', 'Gread'],
    \[' [6]  ❯ :Gremove                           | git rm', 'Gremove'],
    \[' [7]  ❯ :Gcd                               | git cd', 'Gcd'],
    \[' [8]  ❯ :Git! push (current branch)        | git push current directory', 'Git! push'],
    \[' [9]  ❯ :Git! push (pick branch)           | git push (remote/branch:)', 'exe "Git! push " input("Push remote/branch: ")'],
    \[' [10] ❯ :Git! pull (current branch)        | git pull current directory', 'Git! pull'],
    \[' [11] ❯ :Git! pull (pick branch)           | git pull (remote/branch:)', 'exe "Git! pull " input("Pull remote/branch: ")'],
    \[' [12] ❯ :Git! checkout (pick branch)       | git checkout (branch:)', 'exe "Git! checkout " input("Checkout branch: ")'],
    \[' [13] ❯ :Gfetch                            | git fetch', 'Gfetch'],
    \[' [14] ❯ :Gmerge                            | git merge', 'Gmerge'],
    \[' [15] ❯ :Gbrowse                           | git browse', 'Gbrowse'],
    \[' [16] ❯ :Gblame                            | git blame', 'Gblame'],
    \[' [17] ❯ :Gedit HEAD^                       | git head', 'Gedit HEAD^'],
    \[' [18] ❯ :Denite gitbranch                  | git branch', 'Denite gitbranch'],
    \[' [19] ❯ :Denite gitlog:file                | git log current file', 'Denite gitlog:file'],
    \[' [20] ❯ :GV                                | git log current repository', 'GV'],
    \[' [21] ❯ :Git! (input)                      | git prompt', 'exe "Git! " input("Git command: ")'],
    \[' [22] ❯ :Glog                              | git log last commit', 'Glog --'],
    \[' [23] ❯ :MagitOnly                         | manage git commit', 'MagitOnly'],
    \] " Append ' --' after log to get commit info commit buffers
    " \[' git log current file', 'Glog -- %'],
    " \[' git log last n commits', 'exe "Glog -" input("num: ")'],
    " \[' git log first n commits', 'exe "Glog --reverse -" input("num: ")'],
    " \[' git log until date', 'exe "Glog --until=" input("day: ")'],
    " \[' git log grep commits',  'exe "Glog --grep= " input("string: ")'],
    " \[' git log pickaxe',  'exe "Glog -S" input("string: ")'],

"}}}

" Denite : General  ---------------------------------------------------------{{{

  let s:menus.commands = {
    \ 'description' : 'General command',
    \}
  let s:menus.commands.command_candidates = [
    \[' [1]  ❯ :Gist                              | Upload current file to gist.github', 'Gist'],
    \[' [2]  ❯ :Limelight!!                       | Dim surrounding light', 'Limelight!!'],
    \[' [3]  ❯ :Goyo                              | Toggle Focus mode', 'Goyo'],
    \[' [4]  ❯ :LeadingSpaceToggle                | Toggle leading dots', 'LeadingSpaceToggle'],
    \[' [5]  ❯ :IndentLinesToggle                 | Toggle indent line', 'IndentLinesToggle'],
    \[' [6]  ❯ :colorscheme                       | Change colourscheme', 'Denite colorscheme'],
    \[' [7]  ❯ :TableModeToggle       ⌘ [,][t][m] | Toggle table mode markdown', 'TableModeToggle'],
    \[' [8]  ❯ :Vimwiki Bindings                  | Vimwiki key bindings', 'Denite menu:vimwiki'],
    \]

"}}}

" Denite : Vimwiki  ---------------------------------------------------------{{{

  let s:menus.vimwiki = {
    \ 'description' : 'Vimwiki key bindings',
    \}
  let s:menus.vimwiki.command_candidates = [
    \[' [1]   ❯ Command                ⌘ [,][w][w] | Open default wiki index file',''],
    \[' [2]   ❯ Command                ⌘ [,][w][t] | Open default wiki index file in a new tab',''],
    \[' [3]   ❯ Command                ⌘ [,][w][s] | Select and open wiki index file',''],
    \[' [4]   ❯ Command                ⌘ [,][w][d] | Delete wiki file you are in',''],
    \[' [5]   ❯ Command                ⌘ [,][w][r] | Rename wiki file you are in',''],
    \[' [6]   ❯ Command                ⌘ [S-Enter] | Split and follow/create wiki link',''],
    \[' [7]   ❯ Command                ⌘ [C-Enter] | Vertical split and follow/create wiki link',''],
    \[' [8]   ❯ Command             ⌘ [,][w][h][h] | Convert current wiki page to HTML and open it in browser',''],
    \[' [9]   ❯ Command                      ⌘ [=] | Add header level',''],
    \[' [10]  ❯ Command                      ⌘ [-] | Remove header level',''],
    \[' [11]  ❯ Command                      ⌘ [+] | Create and/or decorate links',''],
    \[' [12]  ❯ Command                ⌘ [C-Space] | Toggle checkbox of a list item on/off',''],
    \[' [13]  ❯ Command            ⌘ [g][l][Space] | Remove checkbox from list',''],
    \[' [14]  ❯ Command                ⌘ [g][l][n] | Increase done status from [ ] to [.] to [o]',''],
    \[' [15]  ❯ Command                ⌘ [g][l][p] | Decrease done status from [o] to [.] to [ ]',''],
    \[' [16]  ❯ Command             ⌘ [,][w][,][i] | Generate VimwikiDiary Index', 'VimwikiDiaryGenerateLinks'],
    \[' [17]  ❯ Command             ⌘ [,][w][,][w] | Generate Today Diary', 'VimwikiMakeDiaryNote'],
    \]

"}}}

" Emmet   -------------------------------------------------------------------{{{

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

  autocmd FileType html,css,scss imap <silent><buffer><expr><tab> <sid>expand_html_tab()
  let g:user_emmet_mode='a'
  let g:user_emmet_complete_tag = 0
  let g:user_emmet_install_global = 0
  autocmd FileType html,css,scss EmmetInstall

"}}}

" Text   --------------------------------------------------------------------{{{

  " Vimwiki

  let g:vimwiki_list = [{'path': '~/Notes/'}]
  let g:vimwiki_folding = 'expr'
  " let g:vimwiki_list = [{'path': '~/Notes/',
  "                      \ 'syntax': 'markdown', 'ext': '.md'}]

  hi VimwikiHeader1 ctermfg=1
  hi VimwikiHeader2 ctermfg=2
  hi VimwikiHeader3 ctermfg=3
  hi VimwikiHeader4 ctermfg=4
  hi VimwikiHeader5 ctermfg=5
  hi VimwikiHeader6 ctermfg=6

  " TaskWiki
  let g:taskwiki_dont_preserve_folds="yes"

"}}}

" Magit  --------------------------------------------------------------------{{{

  let g:magit_discard_untracked_do_delete=1

"}}}

" GitGutter ------------------------------------------------------------------{{{

  let g:gitgutter_map_keys = 0
  " let g:gitgutter_highlight_lines = 1

"}}}
