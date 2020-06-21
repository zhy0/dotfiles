filetype plugin indent on
syntax on

set expandtab
set hidden
set shiftwidth=4
set number
set noswapfile
set foldlevelstart=999
set foldmethod=indent

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
inoremap jk <ESC>

"" Files navigation
nnoremap ,f :find *
nnoremap ,v :vert sfind *

"" Undo stuff in insert mode
inoremap <C-Z> <C-O>u
inoremap <C-R> <C-G>u<C-R>
inoremap <CR> <C-G>u<CR>

" Open new line below and above current line
nnoremap <space>o o<esc>
nnoremap <space>O O<esc>

" To beginning in command mode
cnoremap <C-A> <Home>

"" Buffer navigation
nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
nnoremap ,b    :buffer *
nnoremap ,B    :vert sbuffer *
nnoremap <BS>  :buffer#<CR>

"" Windows navigation
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h

""" More text objects
for char in [ '_', '.', ':', ',', ';', '<bar>', '/', '<bslash>', '*', '+', '-', '#', '$' ]
    execute 'xnoremap i' . char . ' :<C-u>normal! T' . char . 'vt' . char . '<CR>'
    execute 'onoremap i' . char . ' :normal vi' . char . '<CR>'
    execute 'xnoremap a' . char . ' :<C-u>normal! F' . char . 'vf' . char . '<CR>'
    execute 'onoremap a' . char . ' :normal va' . char . '<CR>'
endfor

"" Pair expansions
"" inoremap (<CR> (<CR>)<Esc>O
"" inoremap {<CR> {<CR>}<Esc>O
"" inoremap [<CR> [<CR>]<Esc>O

if executable("fzf")
    let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'env/**' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"
    if executable('rg')
        let $FZF_DEFAULT_COMMAND = 'rg --files --hidden --follow --glob "!env/**" --glob "!.git/*"'
    endif
    "" Use fzf instead
    nnoremap ,f :Files<CR>
    nnoremap ,b :Buffers<CR>
endif

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
