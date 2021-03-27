local lspconfig = require 'lspconfig'

function _G.reload_lsp()
    vim.lsp.stop_client(vim.lsp.get_active_clients())
    vim.cmd [[edit]]
end

function _G.open_lsp_log()
    local path = vim.lsp.get_log_path()
    vim.cmd("edit " .. path)
end

vim.cmd('command! -nargs=0 LspRestart call v:lua.reload_lsp()')
vim.cmd('command! -nargs=0 LspLog call v:lua.open_lsp_log()')

vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = ""})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = ""})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = ""})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = ""})

-----------------------------------------------------
-- Handler overrides
-----------------------------------------------------

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    underline = true,
    virtual_text = true,
    signs = true,
    update_in_insert = false
})

vim.lsp.handlers["textDocument/formatting"] = function(err, _, result, _, bufnr)
    if err ~= nil or result == nil then
        return
    end
    if not vim.api.nvim_buf_get_option(bufnr, "modified") then
        local view = vim.fn.winsaveview()
        vim.lsp.util.apply_text_edits(result, bufnr)
        vim.fn.winrestview(view)
        if bufnr == vim.api.nvim_get_current_buf() then
            vim.cmd [[noautocmd :update]]
        end
    end
end

-----------------------------------------------------
-- Custom on_attach / capabilities
-----------------------------------------------------

-- Add LSP Snippets capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    local opts = {noremap = true, silent = true}
    buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
    buf_set_keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
    buf_set_keymap("n", "K", ":Lspsaga hover_doc<CR>", opts)
    buf_set_keymap("n", "gh", ":Lspsaga lsp_finder<CR>", opts)
    buf_set_keymap("n", "gs", ":Lspsaga signature_help<CR>", opts)
    buf_set_keymap("n", "<localleader>ca", ":Lspsaga code_action<CR>", opts)
    buf_set_keymap("v", "<localleader>ca", ":<C-U>Lspsaga range_code_action<CR>", opts)
    buf_set_keymap("n", "<C-f>", ":lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
    buf_set_keymap("n", "<C-b>", ":lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)
    buf_set_keymap("n", "gn", ":Lspsaga diagnostic_jump_next<CR>", opts)
    buf_set_keymap("n", "gp", ":Lspsaga diagnostic_jump_prev<CR>", opts)

    if client.resolved_capabilities.implementation then
        buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    end

    if client.resolved_capabilities.rename then buf_set_keymap("n", "gR", ":Lspsaga rename<CR>", opts) end

    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
          hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
          hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
          hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
          augroup lsp_document_highlight
            autocmd! * <buffer>
            autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
            autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
          augroup END
    ]], false)
    end

    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_exec([[
          augroup LspFormat
            autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync(nil, 1000)
          augroup END
        ]], false)
    end

    print("'" .. client.name .. "' server attached")
end

-----------------------------------------------------
-- go LSP
-----------------------------------------------------

lspconfig.gopls.setup {
    cmd = {"gopls", "--remote=auto"},
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
        on_attach(client)
    end,
    capabilities = capabilities,
    init_options = {usePlaceholders = true, completeUnimported = true}
}

-----------------------------------------------------
-- lua LSP
-----------------------------------------------------

lspconfig.sumneko_lua.setup {
    cmd = {"/usr/bin/lua-language-server", "-E", "/usr/share/lua-language-server/main.lua"},
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {version = 'LuaJIT', path = vim.split(package.path, ';')},
            diagnostics = {globals = {'vim', 'packer_plugins'}},
            workspace = {
                library = {[vim.fn.expand('$VIMRUNTIME/lua')] = true, [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true}
            },
            telemetry = {enable = false}
        }
    }
}

-----------------------------------------------------
-- yaml LSP
-----------------------------------------------------

lspconfig.yamlls.setup {
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        yaml = {
            -- schemas = {
            --   Kubernetes = "*.yaml"
            -- },
            schemaStore = {enable = true}
        }
    }
}

-----------------------------------------------------
-- tsserver LSP
-----------------------------------------------------

lspconfig.tsserver.setup {
    on_attach = function(client)
        -- Disable tsserver formatting, use prettier in efm lsp instead
        client.resolved_capabilities.document_formatting = false
        on_attach(client)
    end,
    capabilities = capabilities,
    filetypes = {"javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx"}
}

-----------------------------------------------------
-- efm LSP
-----------------------------------------------------

local luafmt = {
    formatCommand = "luafmt ${-i:tabWidth} --stdin",
    formatStdin = true
}

local isort = {formatCommand = "isort --quiet -", formatStdin = true}
local yapf = {formatCommand = "yapf --quiet", formatStdin = true}

-- JavaScript/React/TypeScript
local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}
local eslint = {
    lintCommand = "eslint_d -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local shfmt = {formatCommand = 'shfmt -ci -s -bn', formatStdin = true}

local golint = {
    lintCommand = "golint",
    lintIgnoreExitCode = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local goimports = {
    formatCommand = "goimports",
    formatStdin = true
}

local misspell = {
    lintCommand = "misspell",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}

local markdownlint = {
    lintCommand = 'markdownlint -s',
    lintStdin = true,
    lintFormats = {'%f:%l %m', '%f:%l:%c %m', '%f: %l: %m'}
}

local languages = {
    lua = {luafmt},
    go = {golint, goimports},
    typescript = {prettier, eslint},
    javascript = {prettier, eslint},
    typescriptreact = {prettier, eslint},
    javascriptreact = {prettier, eslint},
    ["javascript.jsx"] = {prettier, eslint},
    ["typescript.tsx"] = {prettier, eslint},
    yaml = {prettier},
    json = {prettier},
    html = {prettier},
    scss = {prettier},
    css = {prettier},
    markdown = {prettier},
    python = {isort, yapf},
    sh = {shfmt}
}

lspconfig.efm.setup {
    root_dir = lspconfig.util.root_pattern("yarn.lock", "lerna.json", ".git"),
    on_attach = on_attach,
    root_dir = function()
      return vim.fn.getcwd()
    end,
    init_options = {documentFormatting = true},
    filetypes = vim.tbl_keys(languages),
    settings = {
        rootMarkers = { "package.json", ".git" },
        languages = languages,
        lintDebounce = 500,
    }
}

-----------------------------------------------------
-- general LSP
-----------------------------------------------------

local servers = {
    'bashls', 'dockerls', 'rust_analyzer', 'pyright', 'vimls', 'jsonls', 'graphql', 'terraformls'
}

for _, server in ipairs(servers) do lspconfig[server].setup {on_attach = on_attach, capabilities = capabilities} end
