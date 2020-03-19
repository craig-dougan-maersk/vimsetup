autocmd FileType yaml set et ts=2 ai sw=2 number
execute pathogen#infect()
syntax on
filetype plugin indent on
colorscheme desert
set cursorline
syntax on
autocmd VimEnter * ConqueTermSplit bash
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd l
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml.ansible foldmethod=indent
autocmd FileType yaml setlocal ai ts=2 sts=2 sw=2 expandtab 
autocmd VimEnter * 10 wincmd + 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '>'
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '^'
let g:gitgutter_sign_modified_removed = '<'
let g:gitgutter_override_sign_column_highlight = 1
set updatetime=250
nmap <Leader>gn <Plug>GitGutterNextHunk  " git next
nmap <Leader>gp <Plug>GitGutterPrevHunk  " git previous
nmap <Leader>ga <Plug>GitGutterStageHunk  " git add (chunk)
nmap <Leader>gu <Plug>GitGutterUndoHunk   " git undo (chunk)
map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>
map <tab><left> <C-w><left>
map <tab><right> <C-w><right>
map <tab><up> <C-w><up>
map <tab><down> <C-w><down>
map <S-tab><left> :tabr<cr>
map <S-tab><right> :tabl<cr>
map <S-tab><up> :tabp<cr>
map <S-tab><down> :tabn<cr>

