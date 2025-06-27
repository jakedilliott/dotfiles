" To enable symbolically link this file to
" `/home/<user>/.config/nvim/init.vim`
" EXAMPLE
" `ln -s ~/Downloads/dotfiles/init.vim ~/.config/nvim/init.vim`

" Find the file type based on its name and allow smart auto-indenting
filetype indent on
set tabstop=4
set shiftwidth=4
set expandtab
   
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

" Plugin stuff using plugged
" Path, make sure to create this before running `PluggedInstall`
call plug#begin('~/.vim/plugged')
	" Plug 'ncm2/ncm2'			"auto completion
	" Plug 'roxma/nvim-yarp'			"auto completion

	" NCM2
	" enable ncm2 for all buffers
	" autocmd BufEnter * call ncm2#enable_for_buffer()
	" set completeopt=noinsert,menuone,noselect
	" set shortmess+=c

	" Yarp debugging
	" let $NVIM_PTHON_LOG_FILE="/tmp/nvim_log"
	" let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

	" inoremap <silent> <expr> <CR> ncm2_ultisnips#expand_or("\<CR>", 'n')
	" Tab and Shift+Tab for moving in snippet
	" let g:UltiSnipsJumpForwardTrigger	= "<Tab>"
	" let g:UltiSnipsJumpBackwardTrigger	= "<S-Tab>"
	" let g:UltiSnipsRemoveSelectModeMappings = 0

	" use TAB for popup menu
	" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


	" Plug 'lervag/vimtex'			"latex completion
	" Plug 'ncm2/ncm2-jedi'			"python completion
	" Plug 'ncm2/ncm2-ultisnips'		"ncm2 snippet integration
	" Plug 'SirVer/ultisnips'			"ncm2 snippets
	
	" NERDTree Stuff
	Plug 'preservim/nerdtree'		"nvim file browsing
	Plug 'Xuyuanp/nerdtree-git-plugin'	"neotree git stuff
	" Navigation
	noremap <C-j> <C-w>j
	noremap <C-k> <C-w>k
	noremap <C-l> <C-w>l
	noremap <C-h> <C-w>h

	" Controls
	nnoremap <leader>n :NERDTree Focus<CR>
	nnoremap <C-n> :NERDTree<CR>
	nnoremap <C-t> :NERDTreeToggle<CR>
	nnoremap <C-f> :NERDTreeFind<CR>

	Plug 'Raimondi/delimitMate'		"highlight matching parens
	Plug 'itchyny/lightline.vim' 		"colorful vim bar
    Plug 'sonph/onehalf', { 'rtp': 'vim' }
	" Plug 'patstockwell/vim-monokai-tasty'
	
	" LightLine.vim 
	set laststatus=2              " To tell Vim we want to see the statusline.
    let g:lightline = { 'colorscheme': 'onehalfdark' }
	" let g:lightline = { 'colorscheme':'monokai_tasty' }
	
	" Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}
	" Plug 'gaalcaras/ncm-R'

" Initialize plugin system
call plug#end()


" Sets color to sublime monokai. Colors are found in /usr/share/vim/vim82/colors
" let g:vim_monokai_tasty_italic = 1
colorscheme onehalfdark

