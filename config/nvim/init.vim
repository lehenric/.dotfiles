if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
   call dein#add('vim-airline/vim-airline')
   call dein#add('vim-airline/vim-airline-themes')
   call dein#add('bling/vim-bufferline')
   call dein#add('scrooloose/nerdtree')
   call dein#add('Xuyuanp/nerdtree-git-plugin')
   call dein#add('neoclide/coc.nvim', { 'merger':0, 'rev': 'release' })
  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
 if dein#check_install()
   call dein#install()
 endif

set list
set t_Co=256
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }


" Airline
"let g:airline_powerline_fonts = 3
" testing rounded separators (extra-powerline-symbols):
let g:airline_left_sep = "\uE0B4"
let g:airline#extensions#tabline#left_sep = "\uE0B4"
let g:airline_right_sep = "\uE0B6"
let g:airline#extensions#tabline#enabled = 1
let g:airline_detect_modified=1
let g:airline_detect_paste=1

cmap w!! w !sudo tee > /dev/null %

 autocmd BufReadPost *
   \ if line("'\"") >= 1 && line("'\"") <= line("$") |
   \   exe "normal! g`\"" |
   \ endif

"autocmd BufReadPost * if @% !~# '\.git[\/\\]COMMIT_EDITMSG$' && line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif 
" natural spliting
set splitbelow
set splitright

" linenumber
set number
"" Macros

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>h :noh<CR>
nmap <leader>n :set number!<CR>
nmap <leader>l :set list!<CR>
noremap <leader>d :sp<CR>
noremap <leader>r :vsp<CR>
nmap <leader>x Bx<ESC>Ex<ESC>
nmap <leader>` Bi`<ESC>Ea`<ESC>
nmap <leader>" Bi"<ESC>Ea"<ESC>
nmap <leader>' Bi'<ESC>Ea'<ESC>
nmap <leader>* Bi*<ESC>Ea*<ESC>
nmap <leader>( Bi(<ESC>Ea)<ESC>
nmap <leader>[ Bi[<ESC>Ea]<ESC>
nmap <leader>{ Bi{<ESC>Ea}<ESC>
