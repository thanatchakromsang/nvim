local lspconfig = require'lspconfig'

function _G.reload_lsp()
  vim.lsp.stop_client(vim.lsp.get_active_clients())
  vim.cmd [[edit]]
end

function _G.open_lsp_log()
  local path = vim.lsp.get_log_path()
  vim.cmd("edit " .. path)
end

vim.fn.sign_define("LspDiagnosticsSignError", {texthl = "LspDiagnosticsSignError", text = ""})
vim.fn.sign_define("LspDiagnosticsSignWarning", {texthl = "LspDiagnosticsSignWarning", text = ""})
vim.fn.sign_define("LspDiagnosticsSignInformation", {texthl = "LspDiagnosticsSignInformation", text = ""})
vim.fn.sign_define("LspDiagnosticsSignHint", {texthl = "LspDiagnosticsSignHint", text = ""})

vim.cmd('command! -nargs=0 LspLog call v:lua.open_lsp_log()')
vim.cmd('command! -nargs=0 LspRestart call v:lua.reload_lsp()')
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle')

-- Add LSP Snippets capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

  -- TODO: update lsp mapping to lsp
  -- Mappings.
  local opts = {noremap = true, silent = true}
  buf_set_keymap("n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
  buf_set_keymap("n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
  buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
  buf_set_keymap("n", "gt", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
  buf_set_keymap("n", "K", ":Lspsaga hover_doc<CR>", opts)
  buf_set_keymap("n", "gh", ":Lspsaga lsp_finder<CR>", opts)
  buf_set_keymap("n", "gs", ":Lspsaga signature_help<CR>", opts)
  buf_set_keymap("n", "ca", ":Lspsaga code_action<CR>", opts)
  buf_set_keymap("n", "<C-f>", ":lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>", opts)
  buf_set_keymap("n", "<C-b>", ":lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>", opts)
  buf_set_keymap("n", "gnd", ":Lspsaga diagnostic_jump_next<CR>", opts)
  buf_set_keymap("n", "gpd", ":Lspsaga diagnostic_jump_prev<CR>", opts)

  if client.resolved_capabilities.implementation then
    buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
  end

  if client.resolved_capabilities.rename then
    buf_set_keymap("n", "rn", ":Lspsaga rename<CR>", opts)
  end

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

  print("'" .. client.name .. "' server attached")
end

-- {{{

lspconfig.gopls.setup {
  cmd = {"gopls","--remote=auto"},
  on_attach = on_attach,
  init_options = {
    usePlaceholders=true,
    completeUnimported=true,
  }
}

-- }}}

-- {{{ Lua LSP

lspconfig.sumneko_lua.setup {
    cmd = {"lua-language-server"},
    on_attach = on_attach,
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                version = 'LuaJIT',
                path = vim.split(package.path, ';'),
            },
            diagnostics = {
                globals = {'vim', 'packer_plugins'}
            },
            workspace = {
                library = {
                    [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                    [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true
                }
            },
            telemetry = {
              enable = false
            }
        }
    }
}

-- }}}

-- {{{ YAML LSP

lspconfig.yamlls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  settings = {
    yaml = {
      -- schemas = {
      --   Kubernetes = "*.yaml"
      -- },
      schemaStore = {
        enable = true
      }
    }
  }
}

lspconfig.dockerls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

-- }}}

local servers = {
  'bashls',
  'rust_analyzer',
  'pyright',
  'vimls',
  'jsonls',
  'graphql',
  'bashls',
  'terraformls',
  'tsserver'
}

for _,server in ipairs(servers) do
  lspconfig[server].setup {
    on_attach = on_attach,
    capabilities = capabilities
  }
end
