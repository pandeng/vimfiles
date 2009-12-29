filetype on  " Automatically detect file types.
filetype plugin on 
set nocompatible  " We don't want vi compatibility.
 
" Add recently accessed projects menu (project plugin)
set viminfo^=!
  
" Minibuffer Explorer Settings
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1
 
" alt+n or alt+p to navigate between entries in QuickFix
map <silent> <m-p> :cp <cr>
map <silent> <m-n> :cn <cr>
 
" Change which file opens after executing :Rails command
let g:rails_default_file='config/database.yml'
 
syntax enable
runtime! macros/matchit.vim

set cf  " Enable error files & error jumping.
set clipboard+=unnamed  " Yanks go on clipboard instead.
set history=256  " Number of things to remember in history.
set autowrite  " Writes on make/shell commands
set ruler  " Ruler on
set nu  " Line numbers on
set wrap
"set nowrap  " Line wrapping off
set timeoutlen=250  " Time to wait after ESC (default causes an annoying delay)
colorscheme vividchalk  " Uncomment this to set a default theme

" Formatting (some of these are for coding in C and C++)
set bs=2  " Backspace over everything in insert mode
set ts=4  " Tabs are 2 spaces
set shiftwidth=4  " Tabs under smart indent
set nocp incsearch
set cinoptions=:0,p0,t0
set cinwords=if,else,while,do,for,switch,case
set formatoptions=tcqr
set cindent
set autoindent
set smarttab
set expandtab

au BufNewFile,BufRead *.rb,*.erb,*.haml,*.rhtml,*.yml set ts=2 | set shiftwidth=2
 
" Visual
set showmatch  " Show matching brackets.
set mat=5  " Bracket blinking.
"set list
" Show $ at end of line and trailing space as ~
"set lcs=tab:\ \ ,eol:$,trail:~,extends:>,precedes:<
set novisualbell  " No blinking .
set noerrorbells  " No noise.
set laststatus=2  " Always show status line.
 
" gvim specific
set mousehide  " Hide mouse after chars typed
set mouse=a  " Mouse in all modes

" Backups & Files
set backup                     " Enable creation of backup file.
set backupdir=~/.vim/backups " Where backups will go.
set directory=~/.vim/tmp     " Where temporary files will go.

" Map
set pastetoggle=<F9>
nmap j gj
nmap k gk
map <silent> <F5> :!ctags -R --exclude=.svn --exclude=.git --exclude=log *<CR>
map <silent> <F7> :NERDTreeToggle<CR>
