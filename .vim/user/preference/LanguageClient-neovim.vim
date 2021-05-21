" Required for operations modifying multiple buffers like rename.
"set hidden
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_serverCommands = {
  \ 'go': ['gopls'],
  \ 'python': ['run', 'pyls'],
  \ 'c': ['clangd'],
  \ 'cpp': ['clangd']
  \ }

