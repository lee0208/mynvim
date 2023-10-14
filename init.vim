let mapleader=" "	" Set spacebar as leader
syntax on	" Text high light
set number	" Show line number
set relativenumber	" Show relative line number
set cursorline	" Show underline
set wrap	" Automatically wrap lines when out of screen
set showcmd
set wildmenu	" Press tab to complete the command

set scrolloff=5	" Keep 5 lines above and below
set hlsearch	" Highlight search text
" Cancel highlighted serrch when open new file, 
exec "nohlsearch"
set incsearch	" Highlight while typing
set ignorecase	" Ignore case
set smartcase	" Smart case for search
set clipboard=unnamedplus

map <LEADER>fd /\(\<\w\+\>\)\_s*\1

" Change key position
noremap J 5j
noremap K 5k

" Shortcut key?
map S :w<CR>	" S(shift+s) to save file.
map Q :q<CR>	" Q(Shift+q) to exit file.
map s <nop>	" s to nop
map R :source $MYVIMRC<CR> " Reload configguration file init.vim.

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

" vnoremap Y "+y
set clipboard=unnamedplus

" Plug
call plug#begin('$HOME/.config/nvim/plugged')

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

" colorthem?
Plug 'connorholyday/vim-snazzy'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

" color
color snazzy
let g:SnazzyTransparent = 1

" ================Markdown
"let g:instant_markdown_slow = 0
"let g:instant_markdown_autostart = 1
" let g:instant_markdown_open_to_the_world = 1
" let g:instant_markdown_allow_unsafe_content = 1
" let g:instant_markdown_allow_external_content = 0
" let g:instant_markdown_mathjax = 1
"let g:instant_markdown_autoscroll = 1
let g:mkdp_auto_start = 0
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toc_autofit = 1
let g:mkdp_browser = 'firefox'

" ====== coc setting======
" coc.vim auto install 
let g:coc_global_extensions = [
\ 'coc-json',
	\ 'coc-vimlsp',
	\ 'coc-cmake',
	\ 'coc-clangd',
	\ 'coc-markdownlint']

" <tab> 
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" coc config
"
" TextEdit might fail if hidden is not set.
set hidden
set updatetime=100
set shortmess+=c
" <c-sapce> to trigger completion
inoremap <silent><expr> <c-o> coc#refresh()
" Use '[g' and ']g' to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')
" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)



