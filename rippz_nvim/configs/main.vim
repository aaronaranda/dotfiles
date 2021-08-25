" MAIN


" LEADER
let mapleader = " " 
let maplocalleader = " "

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
"filetype plugin indent on
set clipboard=unnamedplus
set virtualedit+=all


" SROLLING
if !&scrolloff
    set scrolloff=3
endif

if !&sidescrolloff
  set sidescrolloff=5
endif

" RELATIVE NUMBERS
set number
"augroup numbertoggle
"  autocmd!
"  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"  autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
"augroup END


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
"set smarttab
set shiftround

" INDENT 
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_setConceal = 1 

" TEXT ALIGNMENT
nnoremap <Leader>Al :left<CR>
nnoremap <Leader>Ac :center<CR>
nnoremap <Leader>Ar :right<CR>
vnoremap <Leader>Al :left<CR>
vnoremap <Leader>Ac :center<CR>
vnoremap <Leader>Ar :right<CR>

" COMMENT THING
set formatoptions-=cro
set comments=
set concealcursor=n
