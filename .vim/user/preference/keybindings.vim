" go to start/end of line
imap <Char-1> <Char-15>:normal ^<cr>
imap <Char-5> <Char-15>:normal $<cr>

" go to prev/next word
imap <ESC>b <Char-15>:normal b<cr>
imap <ESC>f <Char-15>:normal w<cr>

nmap <F3> <plug>(lcn-menu)
vmap <silent> <F5> :sort<cr>
nmap <silent> <F12> :MarkdownPreview<cr>

nmap <silent> <leader><ESC> :let @/=""<cr>
nmap <silent> <leader>a <plug>(EasyAlign)
vmap <silent> <leader>a <plug>(EasyAlign)
nmap <silent> gd <plug>(lcn-definition)
nmap <silent> K <plug>(lcn-hover)
nmap <silent> <leader>l :Limelight!!<cr>

vmap <C-c> y:Oscyank<cr>
