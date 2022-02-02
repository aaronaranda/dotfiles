
local servers = {
    'bashls',
    'ccls',
    'clangd',
    'cmake',
    'cssls',
    'html',
    'java_language_server',
    'jedi_language_server',
    'jsonls',
    'ltex',
    'pylsp',
    'sumneko_lua',
    'pyright',
    'tsserver',
    'vimls'
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
local lspconfig = require('lspconfig')

for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup{
        capabilities = capabilities,
    }
end

vim.cmd('sign define LspDiagnosticsSignError text=✖ texthl=LspDiagnosticsDefaultError numhl=LspDiagnosticsDefaultError')
vim.cmd('sign define LspDiagnosticsSignWarning text= texthl=LspDiagnosticsDefaultWarning numhl=LspDiagnosticsDefaultWarning')
vim.cmd('sign define LspDiagnosticsSignInformation text= texthl=LspDiagnosticsDefaulInfo numhl=LspDiagnosticsDefaultInfo')
vim.cmd('sign define LspDiagnosticsSignHint text= texthl=LspDiagnosticsDefaultHint numhl=LspDiagnosticsDefaultHint') 

local hover = vim.lsp.with(vim.lsp.handlers.hover, {
        border = 'single'
    })
vim.lsp.handlers['textDocument/hover'] = hover

local publish_diagnostics = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        underline = true,
        virtual_text = {prefix = " "},
        signs = true,
    })
vim.lsp.handlers['textDocument/publishDiagnostics'] = publish_diagnostics

-- Configure lspkind symbols
require('lspkind').init({
    -- enables text annotations
    with_text = false,

    -- default symbol map
    -- can be either 'default' or
    -- 'codicons' for codicon preset (requires vscode-codicons font installed)
    preset = 'default',
    -- override preset symbols
    symbol_map = {
      Text = "",
      LuaSnip = "✂️",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})  
