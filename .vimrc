syntax on

set nu
set rnu
set bs=2
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nohlsearch
set hidden
set noerrorbells
set encoding=utf-8
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set scrolloff=10
set colorcolumn=80

" Key Mapping
map <C-h> <C-w>h 
map <C-j> <C-w>j 
map <C-k> <C-w>k 
map <C-l> <C-w>l
map <C-a> ggVG      " Select All
nmap t :term<CR>
nmap tv :vert term<CR>
nmap <Tab> >>_      " Normal mode indent with Tab
nmap <S-Tab> <<_    " Normal mode unindent with Tab
imap <S-Tab> <C-D> <Esc> <i>  " insert mode unindent with tab
vmap <Tab> >gv      " Visial mode indent with Tab
vmap <S-Tab> <gv    " Visial mode unindent with Tab
map <F5> :setlocal spell!<CR>

" Here comes Plugins
call plug#begin('~/.vim/plugged')
Plug 'rakr/vim-one'
Plug 'wadackel/vim-dogrun'
Plug 'liuchengxu/space-vim-dark'
Plug 'ghifarit53/tokyonight-vim'

Plug 'vim-scripts/AutoComplPop'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'

call plug#end()

set termguicolors
set background=dark

hi Comment cterm=italic

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

colorscheme tokyonight

let g:user_emmet_leader_key='<TAB>' " Emmit works when press enter+,

" Airline Setting
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '-|-'
let g:airline#extensions#tabline#formatter = 'default'
autocmd VimEnter * AirlineTheme embark  " Auto Load airline themes on start up 
"autocmd VimEnter * AirlineTheme atomic  " Auto Load airline themes on start up 

" Autocomplete Setting
set complete+=kspell
set completeopt=menuone,longest,preview
set shortmess+=c
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"

