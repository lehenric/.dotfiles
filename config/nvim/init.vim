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
   call dein#add('tpope/vim-fugitive')
   call dein#add('bling/vim-bufferline')
   call dein#add('scrooloose/nerdtree')
   call dein#add('Xuyuanp/nerdtree-git-plugin')
   " icons
   call dein#add('ryanoasis/vim-devicons')
   call dein#add('tpope/vim-surround')
   call dein#add('sheerun/vim-polyglot')
   call dein#add('junegunn/fzf.vim')
   call dein#add('plasticboy/vim-markdown')
   call dein#add('neoclide/coc.nvim', { 'merger':0, 'rev': 'release' })
   call dein#add('universal-ctags/ctags')
   call dein#add('arcticicestudio/nord-vim')
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
"let g:airline_theme = "solarized"
"let g:airline_solarized_bg='dark'
 let g:airline_powerline_fonts = 1
" testing rounded separators (extra-powerline-symbols):
 let g:airline_left_sep = "\uE0B4"
 let g:airline#extensions#tabline#left_sep = "\uE0B4"
 let g:airline_right_sep = "\uE0B6"
 let g:airline#extensions#tabline#right_sep = "\uE0B6"
 let g:airline#extensions#tabline#enabled = 1
 let g:airline_detect_modified=1
 let g:airline_detect_paste=1
 let g:airline#extensions#branch#enabled = 1
 let g:airline_section_c = airline#section#create(['%t'])

" sudo write
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

" search visual
vnoremap // y/<C-R>"<CR>

" FOLDING
" js folding
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END
set foldlevelstart=2

"" Macros

let mapleader=","
nmap <leader>q :NERDTreeToggle<CR>
nmap <leader>h :noh<CR>
nmap <leader>n :set number!<CR>
nmap <leader>nrl :set relativenumber!<CR>
nmap <leader>l :set list!<CR>

" registers
noremap <leader>r :reg<CR>

" fzf
nnoremap <leader>fi :Files<CR>
nnoremap <Leader>bu :Buffers<CR>
nnoremap <Leader>hi :History<CR>

nmap <leader>x Bx<ESC>Ex<ESC>
nmap <leader>` Bi`<ESC>Ea`<ESC>
nmap <leader>" Bi"<ESC>Ea"<ESC>
nmap <leader>' Bi'<ESC>Ea'<ESC>
nmap <leader>* Bi*<ESC>Ea*<ESC>
nmap <leader>( Bi(<ESC>Ea)<ESC>
nmap <leader>[ Bi[<ESC>Ea]<ESC>
nmap <leader>{ Bi{<ESC>Ea}<ESC>

"" convert md to pdf from actual file and open it using xdg-open
nnoremap <leader>md :exec  "! pandoc -o " . expand('%:p:r') . ".html " . expand('%:p') . " && firefox " . expand('%:p:r') . ".html"<CR>

"" prettyfi json
nnoremap <leader>jq :%!python -m json.tool<CR>

" excape terminal with esc
tnoremap <Esc> <C-\><C-n>

" terminal to zsh
set sh=/usr/bin/zsh

" spaces instead of tabs for indent
set tabstop     =4
set softtabstop =4
set shiftwidth  =4
set expandtab

" generate ctags
nnoremap <leader>c :!ctags %<CR>

" reverse vim history search
nnoremap <leader>R q:?

" insert newline
nnoremap <leader>o o<ESC>
nnoremap <leader>O O<ESC>

" colorscheme
" colorscheme ron

" Nord theme
let g:nord_cursor_line_number_background = 1
colorscheme nord
"let g:airline_theme = 'rigel'

