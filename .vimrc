"vimrc inspired by https://dougblack.io/words/a-good-vimrc.html

"enable syntax highlighting
syntax on

" 256-color terminal
set t_Co=256

" color scheme
colorscheme badwolf

"spaces and tabs
set tabstop=4
set softtabstop=4
set expandtab

"ui config
set number
set showcmd "shows the last command run
set cursorline "horizontal line under the line you are on
filetype indent on
set wildmenu
set lazyredraw
set showmatch

"usability configs

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
"set autoindent

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Enable use of the mouse for all modes
set mouse=a

"searching
set incsearch
set hlsearch

"movement

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move backups to /tmp folder
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" filetype specific things
autocmd FileType make setlocal noexpandtab
autocmd Filetype c set softtabstop=2
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown
