" Git keybinds
" Git status
nnoremap  <Leader>gs  :Gstatus<cr>
" Git diff in split window
nnoremap  <Leader>gd  :Gdiffsplit<cr>
" Git commit
nnoremap  <Leader>gc  :Gcommit<cr>
" Git push 
nnoremap  <Leader>gP  :Gpush<cr>
" Git pull 
nnoremap  <Leader>gp  :Gpull<cr>
" Git move 
nnoremap  <Leader>gm  :Gmove<cr>
" Git merge 
nnoremap  <Leader>gM  :Gmerge<cr>
" browse current file on web
nnoremap  <Leader>gb  :Gbrowse<cr>
" browse current line on web
nnoremap  <Leader>gbl  :CocCommand git.browserOpen<cr>
" View chunk information in preview window. 
nnoremap  <Leader>gh  :CocCommand git.chunkInfo<cr>
" View commit information in preview window. 
nnoremap  <Leader>gsc  :CocCommand git.showCommit<cr>
" Toggle git gutter sign columns
nnoremap  <Leader>gg  :CocCommand git.toggleGutters<cr>
" Lazygit
nnoremap <silent> <Leader>lg :call ToggleLazyGit()<CR>


" NERD Commenter
" Toggle comments in visual or normal mode
nnoremap <leader>nc :call NERDComment(0,"toggle")<cr>
vnoremap <leader>nc :call NERDComment(1,"toggle")<cr>
" Toggle a sexy comment
nnoremap <leader>ns :call NERDComment(0,"sexy")<cr>
vnoremap <leader>ns :call NERDComment(1,"sexy")<cr>
" append a  comment
nnoremap <leader>na :call NERDComment(0,"append")<cr>
vnoremap <leader>na :call NERDComment(1,"append")<cr>
" uncomment section
nnoremap <leader>nu :call NERDComment(0,"uncomment")<cr>
vnoremap <leader>nu :call NERDComment(1,"uncomment")<cr>
" invert comments
nnoremap <leader>ni :call NERDComment(0,"invert")<cr>
vnoremap <leader>ni :call NERDComment(1,"invert")<cr>
" comment section
nnoremap <leader>n :call NERDComment(0,"comment")<cr>
vnoremap <leader>n :call NERDComment(1,"comment")<cr>
"

" Vista
" Floating tag finder
nnoremap  <Leader>ft  :Vista finder coc<cr>
" Opens tagbar on right side of screen
nmap <F8> :Vista!!<CR>


" Lazydocker
nnoremap <silent> <Leader>ld :call ToggleLazyDocker()<CR>

" Vimtex
nmap <silent> <Leader>lc :VimtexCompile<cr>
vmap <silent> <Leader>ls :VimtexCompileSelected<cr>
nmap <silent> <Leader>li :VimtexInfo<cr>
nmap <silent> <Leader>lt :VimtexTocToggle<cr>
nmap <silent> <Leader>lv :VimtexView<cr>


" Markdown preview
nmap <Leader>md <Plug>MarkdownPreviewToggle

" Table mode toggle
nmap <silent> <Leader>tm :TableModeToggle<cr>

" vim-minimap controls
" let g:minimap_toggle='<leader>mm'
nmap <silent> <Leader>mm :MinimapToggle<cr>

" easymotion commands
map <Leader><Leader>. <Plug>(easymotion-repeat)
map <Leader><Leader>f <Plug>(easymotion-bd-f)
nmap <Leader><Leader>f <Plug>(easymotion-overwin-f)
nmap <Leader><Leader>s <Plug>(easymotion-overwin-f2)
nmap <Leader><Leader>j <Plug>(easymotion-overwin-line)
nmap <Leader><Leader>k <Plug>(easymotion-overwin-line)
map  <Leader><Leader>w <Plug>(easymotion-bd-w)
map <Leader><Leader>w <Plug>(easymotion-overwin-w)
