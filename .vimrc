" list of plugins:
" vim-plug (junegunn/vim-plug)
" lightline (itchyny/lightline.vim)
" vim-cpp-modern (bfrg/vim-cpp-modern)

call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'bfrg/vim-cpp-modern'
call plug#end()

" prevent some weird keyboard bugs
set nocompatible
" make backspace key delete
set backspace=indent,eol,start
" disable creating swap files
set noswapfile

" set update time
set updatetime=1000
" useful for lightline plugin
set ttimeout ttimeoutlen=50

" display number lines
set number
" toggle status line visibility
set laststatus=2
" disable -- INSERT -- messages at the bottom
set noshowmode
" display vertical rulers
set cc=80,100
" prevent text from wrapping
set nowrap
" display cursor line
set cursorline

" display left-side column
"set signcolumn=yes

" set number of colors
set t_Co=256
" disable bold font
set t_md=
" use UTF-8 encoding
set encoding=UTF-8

" enable scrolling and using mouse
set mouse=a

" number of columns when using tab
set tabstop=4
" width for autoindents
set shiftwidth=4
" copy indent from previous line
set autoindent

" custom colorscheme
if has('termguicolors')
	set termguicolors
endif
set background=dark
let g:lightline = {'colorscheme': 'gruvbox'}
colorscheme gruvbox

" activate syntax highlighting
syntax on

" automatically match some characters
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap " ""<Left>
inoremap ' ''<Left>

