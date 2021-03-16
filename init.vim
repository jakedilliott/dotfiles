" Find the file type based on its name and allow smart auto-indenting
filetype indent on

" Turn on smart indentation
set si

" Turns on Syntax Highlighting
syntax enable
set encoding=utf8

" Match brackets
set showmatch
set mat=2 "blink every 2 tenths of a second

" Instead of failing a command because of unsaved changes, use a
" command prompt to ask to save the files.
set confirm

" Lines are numbered relative to the line the cursor is on
set number

" Sets ruler in the bottom right
set ruler

" Lets you use the mouse
set mouse=a

" Sets <F5> to compile rmarkdown files
autocmd Filetype rmd,Rmd map <F5> :!echo<space>"rmarkdown::render('<c-r>%')"<space>R<space>--vanilla<enter>

" Plugin stuff
" Path
call plug#begin('~/.vim/plugged')

" Plugins
" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
" Plug 'ncm2/ncm2'
" Plug 'roxma/nvim-yarp'
" Plug 'gaalcaras/ncm-R'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'patstockwell/vim-monokai-tasty'
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

" Set a local leader
let mapleader = ","
let g:mapleader = ","

" NCM2
" autocmd BufEnter * call ncm2#enable_for_buffer()    " To enable ncm2 for all buffers.
" set completeopt=noinsert,menuone,noselect           " :help Ncm2PopupOpen for more

" NERD Tree
map <leader>nn :NERDTreeToggle<CR>                  " Toggle NERD tree.

" LightLine.vim 
set laststatus=2              " To tell Vim we want to see the statusline.
let g:lightline = {
   \ 'colorscheme':'monokai_tasty',
   \ }

" Sets color to sublime monokai. Colors are found in /usr/share/vim/vim82/colors
let g:vim_monokai_tasty_italic = 1
colorscheme vim-monokai-tasty 

