set nocompatible " not vi compatible

" general environment things
filetype indent on
let python_highlight_all=1
set autoindent
set cursorline
set expandtab
set exrc
set foldenable
set foldlevelstart=10
set foldmethod=indent
set hidden
set hlsearch
set incsearch
set incsearch
set lazyredraw
set nobackup
set noerrorbells
set nohlsearch
set noswapfile
set nowrap
set number
set scrolloff=8
set shiftwidth=4
set showmatch
set signcolumn=yes
set softtabstop=4
set tabstop=4
set wildmenu
set wildmenu
syntax enable

" toggling, absolute in insert, relative in normal
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
:  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
:augroup END%s/\s\+$%s/\s\+$

" Plugin management begins
" Plugins will be downloaded under the specified directory.
call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme gruvbox
let g:airline_powerline_fonts = 1
set background=dark

" keybindings
nnoremap <silent> [oh :call gruvbox#hls_show()<CR>
nnoremap <silent> ]oh :call gruvbox#hls_hide()<CR>
nnoremap <silent> coh :call gruvbox#hls_toggle()<CR>

nnoremap * :let @/ = ""<CR>:call gruvbox#hls_show()<CR>*
nnoremap / :let @/ = ""<CR>:call gruvbox#hls_show()<CR>/
nnoremap ? :let @/ = ""<CR>:call gruvbox#hls_show()<CR>?

" space closes folds
nnoremap <space> za		

" VERY controversial keybindings ooo
nnoremap B ^
nnoremap E $
nnoremap ^ <nop>
nnoremap $ <nop>
inoremap jk <esc>

" Start NERDTree when Vim is started without file arguments
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" NERDTree keybindings
nnoremap <C-n> :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
