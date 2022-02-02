-- Use the util remap functions
local functs = require('util')
local map = functs.map
vim.g.mapleader = " "
vim.g.localleader = " "
map('n', '<Space>', '<NOP>')

-- My favorite
map('i', 'jk', '<ESC>', {noremap=true})
map('i', 'kj', '<ESC>', {noremap=true}) 

-- Testing out resizing of windows
map('n', '<C-S-j>', ':resize -2<CR>')
map('n', '<C-S-l>', ':resize +2<CR>')
map('n', '<C-S-k>', ':vertical resize -2<CR>')
map('n', '<C-S-i>', ':vertical resize +2<CR>')

-- Window movement
map('n', '<leader>i', '<c-w>k')
map('n', '<leader>k', '<c-w>j')
map('n', '<leader>j', '<c-w>h')
map('n', '<leader>l', '<c-w>l')

-- Buffer switching
map('n', '<Tab>', ':bnext<CR>')
map('n', '<S-Tab>', ':bprevious<CR>')

map('v', '<', '<gv')
map('v', '>', '>gv')

-- Commenting
map('v', '<Leader>/', ':CommentToggle<CR>')

-- quickfix
map('n', '<Leader>qo', "<cmd>lua require('util').toggle_qf()<cr>")

-- telescope
map('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<cr>" ) -- Find files
map('n', '<leader>fmf', "<cmd>lua require('telescope').extensions.media_files.media_files()<cr>") -- find media file
map('n', '<leader>fgf', "<cmd>lua require('telescope.builtin').git_files()<cr>") -- Find git files
map('n', '<leader>fb', "<cmd>lua require('telescope.builtin').file_browser()<cr>") -- File Browser
map('n', '<leader>fw', "<cmd>lua require('telescope.builtin').live_grep()<cr>") -- Find word
-- m'n',ap('<leader>fb', "<cmd>lua require('telescope.builtin').buffewrs()<cr>")
map('n','<leader>fvh', "<cmd>lua require('telescope.builtin').help_tags()<cr>") -- search vim help
map('n','<leader>fvc', "<cmd>lua require('telescope.builtin').commands()<cr>") -- find vim command
map('n','<leader>fmp', "<cmd>lua require('telescope.builtin').man_pages()<cr>") -- search man pages
-- map('n','<leader>qf', "<cmd>lua require('telescope.builtin').quickfix()<cr>") -- list quick fixes
map('n','<leader>fs', "<cmd>lua require('telescope.builtin').spell_suggest()<cr>") -- suggest spelling
map('n','<leader>fkm', "<cmd>lua require('telescope.builtin').keymaps()<cr>") -- find keymaps
map('n','<leader>fr', "<cmd>lua require('telescope.builtin').lsp_references()<cr>") -- show references for obj under cursor
map('n','<leader>fs', "<cmd>lua require('telescope.builtin').lsp_document_symbols()<cr>") -- show symbols in document
map('n','<leader>fws', "<cmd>lua require('telescope.builtin').lsp_workspace_symbols()<cr>") -- show symbols in workspace
map('n','<leader>ca', "<cmd>lua require('telescope.builtin').lsp_code_actions()<cr>") -- code actions
map('n','<leader>fi', "<cmd>lua require('telescope.builtin').lsp_implementations()<cr>")
map('n','<leader>fd', "<cmd>lua require('telescope.builtin').lsp_definitions()<cr>")
map('n','<leader>tp', "<cmd>lua require('telescope.builtin').planets()<cr>") -- funny easter egg
map('n','<leader>tbi', "<cmd>lua require('telescope.builtin').builtin()<cr>") -- choose builtin to launch
-- t'n',elescope git mappings
map('n','<leader>gco', "<cmd>lua require('telescope.builtin').git_commits()<cr>") -- git commits checkout: <cr> checkout, reset mixed <C-r>m, reset soft <C-r>s and reset hard <C-r>h
map('n','<leader>gbc', "<cmd>lua require('telescope.builtin').git_bcommits()<cr>") -- git buffer commits checkout
map('n','<leader>gbr', "<cmd>lua require('telescope.builtin').git_branches()<cr>") -- checkout action <cr>, track action <C-t> and rebase action<C-r>

-- markdown-preview
-- map('n', '<leader>md', ":MarkdownPreview<CR>")


-- nvim tree
map('n', '<Leader>n', ':NvimTreeFindFile<CR>')
map('n', '<c-n>', ':NvimTreeToggle<CR>')


-- trouble
map('n', '<Leader>tt', ':LspTroubleToggle<CR>')
map('n', '<leader>qf', ':TroubleToggle quickfix<CR>')

-- make
map('n', '<Leader>ms', ':Neomake<CR>')
map('n', '<Leader>mt', ':TestFile<CR>')
map('n', '<Leader>mu', ':Ultest<CR>')
map('n', '<Leader>w', ':ChooseWin<CR>')


vim.cmd [[
  augroup ftplugin
    au!
    au FileType man setl laststatus=0 noruler
    au FileType vim,html,css,javascript,javascriptreact,typescript,typescriptreact,lua,sh,zsh setl sw=2
    au TermOpen term://* setl nornu nonu nocul so=0 scl=no
  augroup END

  augroup highlight_yank
    au!
    au TextYankPost * silent! lua vim.highlight.on_yank { timeout = 150 }
  augroup END
]]

map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
map('n','<leader>me','<cmd>lua vim.lsp.buf.rename()<CR>')
map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>') 
