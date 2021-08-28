" incompatible with vi
set nocompatible

" set list
set autoindent
set expandtab
set hidden
set incsearch
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set number
set scrolloff=8
set shiftwidth=4
set showmatch
set tabstop=4 softtabstop=4

" like sets, but not quite
filetype indent on

" python specific configurations
"   see also: tabstop, softtabstop
let python_highlight_all=1

" line numbering: absolute in insert, relative in normal
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END%s/\s\+$%s/\s\+$

" keymaps
map <C-r>:source ~/.vimrc<CR>
nnoremap B ^
nnoremap E $
inoremap jk <esc>
nnoremap ^ <nop>
nnoremap $ <nop>

" Plugins
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'haishanh/night-owl.vim'
Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" theme configuration
if (has("termguicolors"))
    set termguicolors
endif"

syntax enable
let g:airline_theme='night_owl'
let g:airline_powerline_fonts = 1
colorscheme night-owl"