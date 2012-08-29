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
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kien/ctrlp.vim'
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

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

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

" Or set backupdir to place the backup file in a central forlder
"set nobackup
"set nowritebackup
set backupdir=~/.vim/backup//,E:/hulufei/tmp/backup//
set directory=~/.vim/swp//,E:/hulufei/tmp/swp//

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
set showmatch
set hlsearch
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=v		" Enable mouse usage (all modes)

set softtabstop=2
set expandtab
set tabstop=2
set shiftwidth=2
set nu
set foldmethod=indent

set sessionoptions+=resize

"Use the tab key match bracket pairs. It's a hell of a lot easier to type <tab> than <%>
nnoremap <tab> %
vnoremap <tab> %

"These lines manage my line wrapping settings and also show a colored column
"at 85 characters
set wrap
set textwidth=79
set formatoptions=qrn1
set colorcolumn=85

"Makes j and k work the way you expect instead of working in some archaic
"'movement by file line instead of screen line' fashion
nnoremap j gj
nnoremap k gk

"Quicker Escaping, note conflict when type 'jj' in insert mode
inoremap jj <ESC>

"A few options that just make things better
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set visualbell
set showmode
set showcmd
set wildmenu
set wildmode=list:longest
set cursorline
set ttyfast
set ruler
set laststatus=2
"当 VIM 工作在 Unicode 状态时，遇到这些宽度不明的字符时，默认使用窄字符，这会导致
"中文的破折号“——”非常短，五角星★等符号只能显示一半。因此，我们需要设置 ambiwidth=double 来解决这个问题。
set ambiwidth=double

"new in Vim 7.3
set relativenumber

"Shortcut for NERDTree plugin
"map <F2> :NERDTreeToggle<CR>
map <F2> :Explore<CR>

"Explore settings
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30
let g:netrw_keepdir= 1
let g:netrw_altv = 1

"Change the <leader> key, <,> is easier to type than <\>
let mapleader = ","

"Key mapping for zen coding
let g:user_zen_expandabbr_key = '<c-e>'

"By default Vim doesn't fold Javascript files,but you can add some
"basic,perfectly serviceable folding with these two lines in your .vimrc
au FileType javascript setlocal foldmethod=marker
au FileType javascript setlocal foldmarker={,}

"Enable Syntastic plugin
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=1

" CoffeeScript config
" See :help expand()
let coffee_compile_vert = 1
"au BufWritePost *.coffee silent execute 'CoffeeMake! -o '.expand('<afile>:p:h').'/../'.expand('<afile>:t:r').'js'
au BufWritePost *.coffee silent execute 'CoffeeMake! -o '.expand('<afile>:p:h').'/../'

" less
au BufNewFile,BufRead *.less set filetype=less
autocmd BufWritePost,FileWritePost *.less !lessc <afile> <afile>:p:h:h/<afile>:t:r.css

" Vim-Powerline settings
"let g:Powerline_symbols = 'fancy'

" ctrlp config
" exclude directories or files from the search
"set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.pyc  " MacOSX/Linux
set wildignore+=tmp\*,*.swp,*.zip,*.exe,*.pyc   " Windows
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 2
let g:ctrlp_root_markers = ['static/']
" Use a custom file listing command
"let g:ctrlp_user_command = 'find %s -type f'        " MacOSX/Linux
"let g:ctrlp_user_command = 'dir %s /-n /b /s /a-d'  " Windows

" Vim-indent
let g:indent_guides_guide_size=1

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

"syntax enable
"set background=dark
"colorscheme solarized
