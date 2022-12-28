let g:ctrlp_working_path_mode = 'r'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows
" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$|vendor\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|doxydoc$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }
