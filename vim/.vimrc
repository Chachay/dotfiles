"
" Settings
"
set fenc=utf-8
" Does not create backup file
set nobackup
" Does not create swap file
set noswapfile
" Auto reloads editing files
set autoread
" Allows to open another files
set hidden
" Shows partial commands
set showcmd
" Allows to use backspace
set backspace=2
colo pablo
set iminsert=0
set imsearch=-1
"
" Displays
"  
set ruler
set number
set cursorline
set cursorcolumn
" cursors goes beyoud the last character
set virtualedit=onemore
set smartindent
set visualbell
" Shows matched braces
set showmatch
" Shows last stats
set laststatus=2
set wildmode=list:longest
nnoremap j gj
nnoremap k gk
set breakindent

" Tab
set list listchars=tab:\?\-
set expandtab
set tabstop=2
set shiftwidth=2


" Search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>

" Dein
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . s:dein_repo_dir
endif

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=s:dein_repo_dir

" Required:
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Let dein manage dein
  " Required:
  call dein#add(s:dein_repo_dir)

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('scrooloose/nerdtree')
  call dein#add('majutsushi/tagbar')

  call dein#add('ajh17/Spacegray.vim')


  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

if dein#check_install()
  call dein#install()
endif

colorscheme spacegray
set background=dark

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
let g:tagbar_width = 30

let g:expert_mode = 1
if get(g:, 'expert_mode')
  nnoremap <Up>    :resize +2<CR>
  nnoremap <Down>  :resize -2<CR>
  nnoremap <Left>  :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>
endif

