vim.cmd('set iskeyword+=-')              -- treat dash separated words as a word text object"
vim.cmd('set shortmess+=c')              -- Don't pass messages to |ins-completion-menu|.

-- Editor scoped options
vim.o.hidden=true                        -- Required to keep multiple buffers open multiple buffers
vim.o.pumheight=10                       -- Makes popup menu smaller
vim.o.fileencoding="utf-8"               -- The encoding written to file
vim.o.cmdheight=1                        -- Space for displaying messages
vim.o.mouse="a"                          -- Enable mouse support
vim.o.splitright=true                    -- Vertical splits will automatically be to the right
vim.o.splitbelow=true                    -- Horizontal splits will automatically be below
vim.o.t_Co="256"                         -- Support 256 colors
vim.o.conceallevel=0                     -- So that I can see `` in markdown files
vim.o.showtabline=2                      -- Always show tabs
vim.o.showmode=false                     -- We don't need to see things like -- INSERT -- anymore
vim.o.backup=false                       -- Disable backup
vim.o.writebackup=false                  -- Disable backup
vim.o.updatetime=300                     -- Faster completion
vim.o.clipboard="unnamedplus"            -- Copy paste between vim and everything else
vim.o.autoread=true                      -- Detect and update file have been changed outside vim
vim.o.timeoutlen=500                     -- Default is 1000, Need for faster Whichkey
vim.o.backspace="indent,eol,start"       -- Fix backsoace indentation
vim.cmd('set ts=4')                      -- Insert 2 spaces for a tab
vim.cmd('set sw=4')                      -- Change the number of space characters inserted for indentation

-- Buffer scoped options
vim.bo.expandtab=true                    -- Converts tabs to spaces
vim.bo.smartindent=true                  -- Makes indenting smart

-- Search scoped options
vim.o.ignorecase=true                    -- Lowercase will be insensitive when search
vim.o.smartcase=true                     -- Uppercase will be sensitive when search

-- Window scoped options
vim.wo.wrap=false                        -- Word wrapping, but only line breaks inserted when explicitly press enter
vim.wo.linebreak=false
vim.wo.list=true
vim.wo.numberwidth=1                     -- Width of gutter
vim.wo.signcolumn="yes"                  -- Always show the signcolumn, otherwise it would shift the text each time
vim.wo.cursorline=true                   -- Highlight current line
vim.wo.number=true                       -- Show number line
vim.wo.relativenumber=true               -- Show relative to current line number instead
