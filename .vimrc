set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
"
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-surround'
Bundle 'kchmck/vim-coffee-script'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'groenewege/vim-less'
Bundle 'wavded/vim-stylus'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mattn/zencoding-vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/ZoomWin'
Bundle 'mileszs/ack.vim'
Bundle 'digitaltoad/vim-jade'
Bundle 'nelstrom/vim-visual-star-search'
Bundle 'Raimondi/delimitMate'
Bundle 'hulufei/vim-indexed-search'
Bundle 'benmills/vimux'
" vim-snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "hulufei/vim-snippets"
Bundle "AndrewRadev/splitjoin.vim"
Bundle "godlygeek/tabular"
Bundle "editorconfig/editorconfig-vim"

"
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
"
" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
if has("autocmd")
  filetype plugin indent on
endif

" set backupdir=~/.vim/backups//,E:/hulufei/tmp/backup//
" set directory=~/.vim/swps//,E:/hulufei/tmp/swp//
" Centralize backups, swapfiles and undo history
set backupdir=~/.vim/backups
set directory=~/.vim/swaps
if exists("&undodir")
	set undodir=~/.vim/undo
endif

"A few options that just make things better
set encoding=utf-8 nobomb
set scrolloff=3
set autoindent
set visualbell
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set laststatus=2
" Add the g flag to search/replace by default
set gdefault
" Don’t add empty newlines at the end of files
set binary
set noeol
" Respect modeline in files
set modeline
set modelines=4
" Enable per-directory .vimrc files and disable unsafe commands in them
set exrc
set secure
" Disable error bells
set noerrorbells
" Don’t reset cursor to start of line when moving around.
set nostartofline
" Show the filename in the window titlebar
set title
" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set hlsearch
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set softtabstop=4
"set expandtab
set tabstop=4
set shiftwidth=4
set nu
set foldmethod=indent
"5行以下不要折叠
set foldminlines=5

"These lines manage my line wrapping settings and also show a colored column
"at 85 characters
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"当 VIM 工作在 Unicode 状态时，遇到这些宽度不明的字符时，默认使用窄字符，这会导致
"中文的破折号“——”非常短，五角星★等符号只能显示一半。因此，我们需要设置 ambiwidth=double 来解决这个问题。
set ambiwidth=double

set sessionoptions+=resize

set iskeyword+=-

" Use relative line numbers, new in Vim 7.3
if exists("&relativenumber")
	set relativenumber
	au BufReadPost * set relativenumber
endif

"Use the tab key match bracket pairs. It's a hell of a lot easier to type <tab> than <%>
nnoremap <tab> %
vnoremap <tab> %
"Makes j and k work the way you expect instead of working in some archaic
"'movement by file line instead of screen line' fashion
nnoremap j gj
nnoremap k gk
"Quicker Escaping, note conflict when type 'jj' in insert mode
inoremap jj <ESC>

"Shortcut for NERDTree plugin
map <F2> :NERDTreeToggle<CR>
map <c-o> :NERDTreeFind<cr>
" map <F2> :NERDTreeToggle %<CR>
"map <F2> :Explore<CR>

"Change the <leader> key, <,> is easier to type than <\>
let mapleader = ","

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
" let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
"let NERDTreeWinPos = "right"

" NerdCommenter
let NERDSpaceDelims=1

" Enable omni completion.
" autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
" autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
" autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
" autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
" let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
" let g:SuperTabRetainCompletionType=2

"Explore settings
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30
let g:netrw_keepdir= 0
let g:netrw_altv = 1
let g:netrw_list_hide = '^\..*'

"Key mapping for zen coding
let g:user_zen_expandabbr_key = '<c-e>'

"By default Vim doesn't fold Javascript files,but you can add some
"basic,perfectly serviceable folding with these two lines in your .vimrc
au FileType javascript setlocal foldmethod=marker
au FileType javascript setlocal foldmarker={,}

" markdown file type
au BufRead,BufNewFile *.{md,markdown} set filetype=markdown
" Treat .json files as .js
autocmd BufNewFile,BufRead *.json setfiletype json syntax=javascript

" Autosave
"au InsertLeave <buffer> write

"Enable Syntastic plugin
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1

" Vim-Powerline settings
"let g:Powerline_symbols = 'fancy'

" ctrlp config
" exclude directories or files from the search
set wildignore+=*/tmp/*,*.so,*.o,*.a,*.obj,*.swp,*.zip,*.pyc,*.pyo,*.class,.DS_Store  " MacOSX/Linux
" set wildignore+=tmp\*,*.swp,*.zip,*.exe,*.pyc   " Windows
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 2

" Vim-indent
let g:indent_guides_guide_size=1

" Source the vimrc file after saving it
if has("autocmd")
  autocmd! bufwritepost .vimrc source $MYVIMRC
endif
nmap <leader>v :tabedit $MYVIMRC<CR>

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
" Show “invisible” characters
"set listchars=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=tab:▸\ ,eol:¬,nbsp:_

" Keybindings for plugin toggle
" nmap <F5> :TagbarToggle<cr>
" nmap <F6> :NERDTreeToggle<cr>
" nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
" nmap  <D-/> :
nnoremap <leader>a :Ack
" nnoremap <leader>v V`]

" splitjoin
nmap sj :SplitjoinSplit<cr>
nmap sk :SplitjoinJoin<cr>

"------------------
" Useful Functions
"------------------
" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" Repalce current words with yanked content
nnoremap <leader>p viw p

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
      \ if ! exists("g:leave_my_cursor_position_alone") |
      \     if line("'\"") > 0 && line ("'\"") <= line("$") |
      \         exe "normal g'\"" |
      \     endif |
      \ endif

" w!! to sudo & write a file
cmap w!! w !sudo tee >/dev/null %

" eggcache vim
nnoremap ; :

" Return indent (all whitespace at start of a line), converted from
" tabs to spaces if what = 1, or from spaces to tabs otherwise.
" When converting to tabs, result has no redundant spaces.
function! Indenting(indent, what, cols)
  let spccol = repeat(' ', a:cols)
  let result = substitute(a:indent, spccol, '\t', 'g')
  let result = substitute(result, ' \+\ze\t', '', 'g')
  if a:what == 1
    let result = substitute(result, '\t', spccol, 'g')
  endif
  return result
endfunction

" Convert whitespace used for indenting (before first non-whitespace).
" what = 0 (convert spaces to tabs), or 1 (convert tabs to spaces).
" cols = string with number of columns per tab, or empty to use 'tabstop'.
" The cursor position is restored, but the cursor will be in a different
" column when the number of characters in the indent of the line is changed.
function! IndentConvert(line1, line2, what, cols)
  let savepos = getpos('.')
  let cols = empty(a:cols) ? &tabstop : a:cols
  execute a:line1 . ',' . a:line2 . 's/^\s\+/\=Indenting(submatch(0), a:what, cols)/e'
  call histdel('search', -1)
  call setpos('.', savepos)
endfunction
command! -nargs=? -range=% Space2Tab call IndentConvert(<line1>,<line2>,0,<q-args>)
command! -nargs=? -range=% Tab2Space call IndentConvert(<line1>,<line2>,1,<q-args>)
command! -nargs=? -range=% RetabIndent call IndentConvert(<line1>,<line2>,&et,<q-args>)

" vertical line ruler
map ,ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction
" Strip trailing whitespace (,ss)
function! StripWhitespace()
	let save_cursor = getpos(".")
	let old_query = getreg('/')
	:%s/\s\+$//e
	call setpos('.', save_cursor)
	call setreg('/', old_query)
endfunction
noremap <leader>ss :call StripWhitespace()<CR>
" Save a file as root (,W)
noremap <leader>W :w !sudo tee % > /dev/null<CR>

" Set tabstop, softtabstop and shiftwidth to the same value
command! -nargs=* Stab call Stab()
function! Stab()
  let l:tabstop = 1 * input('set tabstop = softtabstop = shiftwidth = ')
  if l:tabstop > 0
    let &l:sts = l:tabstop
    let &l:ts = l:tabstop
    let &l:sw = l:tabstop
  endif
  call SummarizeTabs()
endfunction
  
function! SummarizeTabs()
  try
    echohl ModeMsg
    echon 'tabstop='.&l:ts
    echon ' shiftwidth='.&l:sw
    echon ' softtabstop='.&l:sts
    if &l:et
      echon ' expandtab'
    else
      echon ' noexpandtab'
    endif
  finally
    echohl None
  endtry
endfunction

syntax enable
set background=dark
" colorscheme solarized

"Invisible character colors
" highlight NonText guifg=#4a4a59
" highlight SpecialKey guifg=#4a4a59

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Inspiration
"autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType php setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=120
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120

" Cut/Copy/Paste as global
" Use Ctrl-Q for block visual mode, see http://goo.gl/8EpnR
source $VIMRUNTIME/mswin.vim
behave mswin