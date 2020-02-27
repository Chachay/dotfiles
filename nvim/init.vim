if &compatible
  set nocompatible
endif

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set backspace=2
colo pablo
set iminsert=0
set imsearch=-1
"
" Displays
"
set ambiwidth=double
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
set breakindent
autocmd BufWritePre * :%s/\s\+$//ge

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

set noshowmode

" Dein
let s:dein_dir = expand('~/.cache/dein')
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if has('win32')
  let s:base_dir = expand('~/AppData/Local/nvim')
else
  let s:base_dir = expand('~/.config/nvim')
endif


if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif


if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  call dein#load_toml(s:base_dir . '/plugins.toml')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on
syntax enable

set background=dark
colorscheme onedark

runtime! keymaps.vim

