" Required for operations modifying multiple buffers like rename.
set hidden
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_serverCommands = {
  \ 'go': ['gopls'],
  \ 'python': ['run', 'pyls'],
  \ 'c': ['clangd'],
  \ 'cpp': ['clangd']
  \ }

nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F4> :call LanguageClient#textDocument_rename()<CR>
