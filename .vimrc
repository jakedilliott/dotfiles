" Find the file type based on its name and allow smart auto-indenting
filetype indent plugin on

" Keeps you on the same indent when starting a new line, unless the
" type of file overrides that
set autoindent

" Turns on Syntax Highlighting
syntax on

" Instead of failing a command because of unsaved changes, use a
" command prompt to ask to save the files.
set confirm

" Lines are numbered relative to the line the cursor is on
set number relativenumber

" Sets ruler in the bottom right
set ruler

" Sets color to koehler. Colors are found in /usr/share/vim/vim82/colors
colorscheme koehler
