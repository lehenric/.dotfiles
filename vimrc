"set newlines to show
:set listchars=eol:↵,tab:⇰\ 
:set list
"set clipboard=unnamedplus
nmap <F8> o<Esc>
nmap <F9> O<Esc> 
syntax on
set t_Co=256
colo industry
cmap w!! w !sudo tee > /dev/null %
