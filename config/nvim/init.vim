if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/lehenric/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/home/lehenric/.local/share/dein')
  call dein#begin('/home/lehenric/.local/share/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/home/lehenric/.local/share/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
   call dein#add('vim-airline/vim-airline')
   call dein#add('vim-airline/vim-airline-themes')
   call dein#add('bling/vim-bufferline')
   call dein#add('scrooloose/nerdtree')
   call dein#add('Xuyuanp/nerdtree-git-plugin')
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
" NERDTree conf
map <C-n> :NERDTreeToggle<CR>
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
let g:airline_right_sep = "\uE0B6"
