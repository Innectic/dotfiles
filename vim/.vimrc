
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

filetype off

set rtp+=~/.vim/bundle/Vundle.vim

set backspace=2

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'fatih/vim-go'
Plugin 'tpope/vim-endwise'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'nsf/gocode'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'elzr/vim-json'
Plugin 'klen/python-mode'
Plugin 'bling/vim-bufferline'
Plugin 'xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-startify'
Plugin 'ap/vim-css-color'
Plugin 'mbbill/undotree'
Plugin 'leafgarland/typescript-vim'
Plugin 'isruslan/vim-es6'
Plugin 'reedes/vim-pencil'
Plugin 'reedes/vim-litecorrect'
Plugin 'danro/rename.vim'
Plugin 'reedes/vim-wordy'
Plugin 'arecarn/crunch.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'dgryski/vim-godef'
Plugin 'Blackrush/vim-gocode'
Plugin 'eikenb/acp'

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

call vundle#end()
filetype plugin indent on
filetype on

set history=500
filetype plugin on
filetype indent on

autocmd BufRead,BufNewFile *.go set filetype=go

set autoread

let mapleader='-'

let $LANG='en'
set langmenu=en

set ruler

set cmdheight=2
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set hlsearch
set incsearch
set lazyredraw
set magic
set showmatch
set mat=2
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" set foldcolumn=1

set wildmenu

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

set lbr
set tw=500

set ai
set si
set wrap

" set number

syntax enable

let g:go_disable_autoinstall = 0
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

let g:acp_completeoptPreview = 1

map <space> /
map <c-space> ?

map <silent> <leader>a :noh<cr>

map <leader>h :Bclose<cr>:tabclose<cr>gT

map <leader>n :bnext<cr>
map <leader>t :bprevious<cr>

map <leader>tn :tabnew<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>ta :tabnext<cr>

set laststatus=2
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c

map <leader>z :NERDTreeToggle<cr>

nmap <leader>d mz:m+<cr>`z
nmap <leader>h mz:m-2<cr>`z

func! RemoveWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunc

autocmd BufWrite *.py :call RemoveWS()

map <leader>ss :setlocal spell!<cr>

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

set background=dark
colorscheme molokai

let g:airline#extensions#tabline#enabled = 1

let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

let g:neocomplete#sources#dictionary#dictionaries = {
            \ 'default': '',
            \ 'vimshell': $HOME.'/.vimshell_hist',
            \ 'scheme': $HOME.'.gosh_completions'
            \ }

inoremap <C-t> neocomplete#undo_completion()
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType go setlocal omnifunc=go#complete#Complete

" Mappings for go stuffs
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>gd <Plug>(go-doc)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)


