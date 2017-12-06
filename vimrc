syntax on
set number
colorscheme seoul256 

let g:javascript_plugin_jsdoc = 1 " javacript syntax highlighting

" control p fuzzy search
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" change leader to comma
let mapleader = ","

function ToggleWrap()
  if (&wrap ==1)
    set nowrap
  else
    set wrap
  endif
endfunction

" toggle leader w to toggle text wrap
map <Leader>w :call ToggleWrap()<CR>

" pathogen plugins
execute pathogen#infect()

filetype plugin indent on
filetype plugin on

" NERDTree configuration
map <Leader>n :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" white space stuff
set nowrap
set tabstop=2

" window stuff
set splitright

" Change split panes
map <Leader>j <C-w>j
map <Leader>k <C-w>k
map <Leader>l <C-w>l
map <Leader>h <C-w>h

" save to system every time for web pack dev server
set backupcopy=yes
