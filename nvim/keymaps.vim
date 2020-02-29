nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

nmap <Esc><Esc> :nohlsearch<CR><Esc>

nnoremap <C-S-Up> <Up>"add"ap<Up>
nnoremap <C-S-Down> "add"ap

let g:expert_mode = 1
if get(g:, 'expert_mode')
  nnoremap <Up>    :resize -2<CR>
  nnoremap <Down>  :resize +2<CR>
  nnoremap <Left>  :vertical resize +2<CR>
  nnoremap <Right> :vertical resize -2<CR>
endif

map <C-n> :NERDTreeToggle<CR>
map <C-m> :TagbarToggle<CR>
let g:tagbar_width = 30

nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>

