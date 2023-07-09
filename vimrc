let mapleader=" "
syntax on
set number
set relativenumber
set cursorline
set wrap
set showcmd
set wildmenu

set scrolloff=5
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase
set clipboard=unnamedplus

map <LEADER>fd /\(\<\w\+\>\)\_s*\1

noremap J 5j
noremap K 5k

map S :w<CR>
map Q :q<CR>
map s <nop>
map R :source $MYVIMRC<CR>

map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitrigth<CR>:vsplit<CR>
map sk :set nosplitbelow<CR>:split<CR>
map sj :set splitbelow<CR>:vsplit<CR>

map <LEADER>h <C-w>h 
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

vnoremap Y "+y
