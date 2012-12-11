"set background=light
set ch=2 " Make command line two lines high

set mousehide " Hide the mouse when typing text

" Make shift-insert work like in Xterm
map <S-Insert> <MiddleMouse>
map! <S-Insert> <MiddleMouse>

set guifont=Droid\ Sans\ Mono\ 10
set go-=T
set go-=l
set go-=L

vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
