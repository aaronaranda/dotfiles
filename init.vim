
"NVIM CONFIG FILE

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

call plug#end()

" ****************************************** "
" SETTINGS

set encoding=utf-8

" LEADER
let mapleader = " " 

" COLORSCHEME
"colorscheme darkspace
colorscheme wal
let g:darkspace_colorterm=0
let g:darkspace_italics=1
set guifont=Source\ Code\ Pro\ for\ Powerline
"set termguicolors
highlight Normal guibg=none
highlight NonText guibg=none
syntax on
set printoptions+=syntax:y
set showmatch
set statusline+=%F
set cmdheight=1

" OTHER SETTINGS
set backspace=indent,eol,start
set conceallevel=0
set nohlsearch
set noshowmode
set autoread
set ignorecase
set smartcase
set hidden
set noswapfile
set incsearch
set keymodel=startsel,stopsel
set nowrap
set splitright
filetype plugin indent on
set clipboard=unnamedplus

" SROLLING
if !&scrolloff
    set scrolloff=3
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

" RELATIVE NUMBERS
set number
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END


" FILE REOPEN
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif



" MOUSE
set mouse=a 

" KEY REMAPPS
" ESC
inoremap jk <ESC>
inoremap kj <ESC>

" WINDOW NAV
nnoremap <Leader>i <C-w>k
nnoremap <Leader>k <C-w>j
nnoremap <Leader>j <C-w>h
nnoremap <Leader>l <C-w>l

" WINDOW SPLIT
nnoremap <Leader>- <C-w>s
nnoremap <Leader>\| <C-w>v<C-w>l

" TAB
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smarttab
set smartindent
set shiftround

" INDENT 
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv


" ******************************** "
" PLUGIN SETTINGS

" NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | :bdelete | endif
map <F7> :NERDTreeToggle<CR>
let nerdtreequitonopen=0
let NERDTreeShowHidden=1
let nerdchristmastree=1
let g:NERDTreeMinimalUI=0
let g:nerdtreewinsize=25
let g:NERDTreeDirArrowExpandable='▷'
let g:NERDTreeDirArrowCollapsible='▼'
let NERDTreeAutoCenter=1
let g:NERDTreeIndicatorMapCustom = {
        \ "modified"  : "✹",
        \ "staged"    : "✚",
        \ "untracked" : "✭",
        \ "renamed"   : "➜",
        \ "unmerged"  : "═",
        \ "deleted"   : "✖",
        \ "dirty"     : "✗",
        \ "clean"     : "✔︎",
        \ 'ignored'   : '☒',
        \ "unknown"   : "?"
        \ }

" AIRLINE
let g:airline_theme='darkspace'
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#formatter='default'
if !exists('g:airline_symbols')
  let g:airline_symbols={}
endif


" COMFY-SCROLL
noremap <silent> <ScrollWheelDown> :call comfortable_motion#flick(40)<CR>
noremap <silent> <ScrollWheelUp>   :call comfortable_motion#flick(-40)<CR>
let g:comfortable_motion_friction=50.0
let g:comfortable_motion_air_drag=1.0


" EMOJI
set completefunc=emoji#complete

" INDENT GUIDES
let g:indentLine_char='▏'
let g:indent_guides_auto_colors=1
let g:indentLine_fileTypeExclude = [
      \'defx',
      \'denite',
      \'startify',
      \'tagbar',
      \'vista_kind',
      \'vista'
      \]



" COC
hi CocWarningSign ctermfg=blue
hi CocErrorSign ctermfg=red
hi CocInfoSign ctermfg=yellow
hi CocHintSign ctermfg=green

" Transparent popup window
hi! Pmenu ctermbg=black
hi! PmenuSel ctermfg=2
hi! PmenuSel ctermbg=0

" Brighter line numbers
hi! LineNr ctermfg=NONE guibg=NONE

" COC KEY REMAPS
set updatetime=300
let g:ycm_python_interpreter_path=expand('~/anaconda3/envs/tf-n-gpu/bin/python3')
let g:python3_host_prog=expand('~/anaconda3/envs/tf-n-gpu/bin/python3')
let g:deoplete#sources#jedi#python_path=expand('~/anaconda3/envs/tf-n-gpu/bin/python3')

let g:coc_snippet_next='<TAB>'
let g:coc_snippet_prev='<S-TAB>'

let g:coc_global_extensions = [
      \'coc-html',
      \'coc-xml',
      \'coc-java',
      \'coc-ccls',
      \'coc-powershell',
      \'coc-r-lsp',
      \'coc-vimlsp',
      \'coc-lua',
      \'coc-sql',
      \'coc-go',
      \'coc-css',
      \'coc-sh',
      \'coc-snippets',
      \'coc-prettier',
      \'coc-eslint',
      \'coc-emmet',
      \'coc-tsserver',
      \'coc-translator',
      \'coc-fish',
      \'coc-docker',
      \'coc-pairs',
      \'coc-json',
      \'coc-python',
      \'coc-imselect',
      \'coc-highlight',
      \'coc-git',
      \'coc-github',
      \'coc-gitignore',
      \'coc-emoji',
      \'coc-lists',
      \'coc-post',
      \'coc-stylelint',
      \'coc-yaml',
      \'coc-tabnine'
      \]


nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

augroup MyAutoCmd
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" TAB COMPLETION TRIGGER
inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" DISABLING ARROWS FOR COMPLETION
set completeopt=noinsert,noselect,menuone
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>'] 
inoremap <expr> <up> pumvisible() ? '<c-y><up>' : '<up>'
inoremap <expr> <down> pumvisible() ? '<c-y><down>': '<down>'
inoremap <expr> <cr> pumvisible() ? '<c-y><cr>' : '<cr>'





