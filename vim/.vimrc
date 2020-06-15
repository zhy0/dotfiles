filetype plugin indent on
syntax on

set expandtab
set hidden
set shiftwidth=4
set number
set noswapfile

set path=.,,**
set wildignore+=**/__pycache__/**
set wildignore+=**/venv/**
set wildignore+=**/env/**
set wildignore+=**/target/**
set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc

"" Yank to system clipboards by default
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

"" Key mappings
inoremap <C-R> <C-G>u<C-R>
inoremap jk <ESC>

"" Buffer navigation
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>

"" Windows navigation
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h

"" Terminal stuff
if has("nvim")
    tnoremap <Esc> <C-\><C-n>
endif


"" Visuals
colorscheme molokai
let g:buftabline_indicators = 1
hi BufTabLineCurrent    ctermbg=239 cterm=bold
hi BufTabLineActive     ctermbg=239
hi BufTabLineHidden     ctermbg=236
hi BufTabLineFill       ctermbg=236 
