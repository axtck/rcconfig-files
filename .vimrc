" Install vim-plug (via github)
" Specify a directory for plugins (like ~/.vim/plugged)
" - Avoid using standard Vim directory names like 'plugin'
" Make sure you use single quotes
call plug#begin('~/.vim/plugged')


" Plugins 
" (reload .vimrc and command :PlugInstall to install plugins)
Plug 'dense-analysis/ale' "Ale (for linting and fixing)
Plug 'itchyny/lightline.vim' "Lightline (line schemes)
Plug 'flazz/vim-colorschemes' "Color schemes


" End
call plug#end()


" Linters and fixers
" pip install
" Example => pip install flake8
" Add location to path (in zshrc):
" export PATH="$HOME/.local/bin:$PATH"
" $ source ~/.zshrc (load new path)
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {'python': ['black']}

" Prettier signs
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'

" Fix on save
let b:ale_fix_on_save = 1

" Syntax on
syntax on

" Indentation plugin
filetype plugin indent on

" Show existing tab with 4 spaces width
set tabstop=4

" When indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab 

" Use jj instead of <esc>
inoremap jj <esc>

" Line numbers (relative)
set relativenumber

" Colorscheme
colorscheme molokai

" Lightline
set laststatus=2
" Added (export TERM=xterm-256color) to .zshrc
" Next
if !has('gui_running')
	set t_Co=256
endif

" Colorscheme configuration
let g:lightline = {
	\'colorscheme': 'wombat',
\ }
