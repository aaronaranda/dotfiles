local g, b, opt, go, wo, o = vim.g, vim.b, vim.opt, vim.go, vim.wo, vim.o
local cmd = vim.cmd

local M = {}

function M.load_settings()
    if g.neovide then
        g.neovide_cursor_vfx_mode = 'railgun'
    end

    cmd('filetype plugin on')
    -- completion menu
    opt.completeopt = 'menu,menuone,noselect' -- completion behavior
    opt.omnifunc = 'v:lua.vim.lsp.omnifunc' -- completion omnifunc

    -- Tag Jump (does this override autopairs??)
    b.match_words = table.concat({
        "(:),\\[:\\],{:},<:>,",
        "<\\@<=\\([^/][^ \t>]*\\)[^>]*\\%(>\\|$\\):<\\@<=/\1>",
    })
    opt.matchpairs:append("<:>")

    -- Window splitting
    opt.splitright = true
    opt.splitbelow = true

    -- Color (uh oh)
--    opt.termguicolors = true
--    go.t_Co = "256"
--    go.t_ut = ""

    opt.inccommand = 'nosplit'
    

    -- Probably will have to delete this nonsense
    opt.hidden = true
    opt.whichwrap = 'b,s,<,>,[,],h,l'
    opt.pumheight = 10
    opt.fileencoding = 'utf-8'
    opt.cmdheight = 2
    opt.splitbelow = true
    opt.splitright = true
    opt.conceallevel = 0
    opt.concealcursor = 'n'
    opt.showtabline = 2
    opt.showmode = false
    opt.backup = false
    opt.writebackup = false
    opt.timeoutlen = 1000
    opt.updatetime = 100
--    opt.paste = true
    opt.clipboard = 'unnamedplus'
    opt.hlsearch = false
    opt.scrolloff = 5
    opt.sidescrolloff = 5
    opt.mouse = 'a'
    opt.ignorecase = true
    

    -- tab
    opt.tabstop = 2
    opt.softtabstop = 2
    opt.expandtab = true
    opt.shiftwidth = 2
    opt.autoindent = true
    opt.smartindent = true

    opt.virtualedit = 'all'
    opt.keymodel = "startsel,stopsel"
    opt.backspace = "indent,eol,start"
    opt.autoread = true
    opt.incsearch = true
    opt.formatoptions = opt.formatoptions + {
      c = false,
      o = false,
      r = false,
    }
    opt.comments = ''

    wo.wrap = false
    wo.number = true
    wo.cursorline = true
    wo.signcolumn = "yes"

    opt.foldenable = false

    g.floating_window_border_dark = {
        {"╭", "FloatBorderDark"},
        {"─", "FloatBorderDark"},
        {"╮", "FloatBorderDark"},
        {"│", "FloatBorderDark"},
        {"╯", "FloatBorderDark"},
        {"─", "FloatBorderDark"},
        {"╰", "FloatBorderDark"},
        {"│", "FloatBorderDark"}
    }

    g.loaded_matchparen = 1
    g.loaded_matchit = 1
    g.loaded_logiPat = 1
    g.loaded_rrhelper = 1
    g.loaded_tarPlugin = 1
    g.loaded_gzip = 1
    g.loaded_zipPlugin = 1
    g.loaded_2html_plugin = 1
    g.loaded_shada_plugin = 1
    g.loaded_spellfile_plugin = 1
    g.loaded_netrw = 1
    g.loaded_netrwPlugin = 1
    g.loaded_tutor_mode_plugin = 1
    g.loaded_remote_plugins = 1


-- cmd([[augroup pandoc_syntax
--     au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
-- augroup END
--     ]])

cmd([[
         nm <silent> <F1> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name")
    \ . '> trans<' . synIDattr(synID(line("."),col("."),0),"name")
    \ . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
    \ . ">"<CR>
]])    
    
end
return M

