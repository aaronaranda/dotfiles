" PLUGINS

call plug#begin('~/.vim/plugged')

" Theme
Plug 'ts-26a/vim-darkspace'

" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Auto Pairs
Plug 'jiangmiao/auto-pairs' 

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" Tabnine
Plug 'codota/tabnine-vim'

" Status Bar
Plug 'vim-airline/vim-airline' 

" Tabular
Plug 'godlygeek/tabular' 

" Comfy Scroll
Plug 'yuttie/comfortable-motion.vim' 

" NERDTree
Plug 'scrooloose/nerdtree' 

" Emojis
Plug 'junegunn/vim-emoji' 

" Surround
Plug 'tpope/vim-surround'

" Wal colorscheme
Plug 'dylanaraps/wal.vim'

" Indent Guides
Plug 'yggdroot/indentLine'

" Git wrapper
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Nerd Commenter
Plug 'scrooloose/nerdcommenter'

" Custom start page
Plug 'mhinz/vim-startify'

" Vim Javascript
Plug 'pangloss/vim-javascript'

" Language Packs
let g:polyglot_disabled = ['latex']
let g:polyglot_disabled = ['markdown']
Plug 'sheerun/vim-polyglot'

Plug 'vim-pandoc/vim-pandoc-syntax'

" Add DevIcons
Plug 'ryanoasis/vim-devicons'

" Tagbar
Plug 'liuchengxu/vista.vim'

" NERDTree
Plug 'scrooloose/nerdtree', { 'on': [ 'NERDTreeToggle', 'NERDTreeFind' ] }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" goyo distraction free mode
Plug 'junegunn/goyo.vim'

" LaTeX support
Plug 'lervag/vimtex'

" Markdown Preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

" vim-hexcolor
Plug 'etdev/vim-hexcolor'

" Easy tables in vim
Plug 'dhruvasagar/vim-table-mode'

" VS-Code style minimap
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}

" Easymodion
Plug 'easymotion/vim-easymotion'

" JS
Plug 'leafgarland/typescript-vim' 
Plug 'maxmellon/vim-jsx-pretty'

" Auto closing tags
Plug 'alvan/vim-closetag' 

" Box Drawing
Plug 'gyim/vim-boxdraw'

" PlantUML Preview
Plug 'weirongxu/plantuml-previewer.vim'

" PlantUML Syntax
Plug 'aklt/plantuml-syntax'

" Browser 
Plug 'tyru/open-browser.vim'


call plug#end()


