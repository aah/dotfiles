" LE VIMRC DE シェーン ワトソン!
" Lasciate ogne speranza, voi ch'intrate.
"-----------------------------------------------------------------------------.
" On your mark!                                                               |
"-----------------------------------------------------------------------------'
set nocp
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
filetype plugin indent on
syntax on

"-----------------------------------------------------------------------------.
" Get set!                                                                    |
"-----------------------------------------------------------------------------'
set autoindent " Copy indentation from current line when starting a new one.
set autoread " Mind external updates.
set autowrite " Write on :! commands.
set backspace=indent,eol,start " Sane backspace behavior in insert mode.
set backup backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " Back up yonder.
set clipboard=unnamed " Yank to Mac OS clipboard by default.
set cmdheight=2 " Extra screenline for fewer hit-enter prompts.
set cursorline " Highlight cursorline.
set dictionary+=/usr/share/dict/words " ^x^k word completion in insert mode.
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp " Swap files thither.
set encoding=utf-8 " ✓
set expandtab " Use a number of spaces to insert a <Tab>.
set hidden " Buffers become hidden when abandoned.
set history=5000 " Those who can't remember the past...condemned to repeat it.
set ignorecase smartcase " Ignore case absent majuscules.
set incsearch hlsearch " Incremental search highlighting.
set laststatus=2 " Always show status line.
set lazyredraw " Choosy redraw.
set magic " Marginally smarter regular expressions by default.
set matchpairs+=<:> " Match angle brackets.
set nowrap " Disable text wrapping.
set number " Display line numbers.
set numberwidth=5 " Minimal number of columns to use for the line number.
set scrolloff=8 " Screenlines to keep above and below the cursor.
set shell=bash " Whatever.
set shiftwidth=2 " Indent with two spaces.
set showcmd " Show (partial) command in the last line of the screen.
set showmatch matchtime=1 " Show matching brackets.
set softtabstop=2 " Use pretend tabs.
set spl=en_us " Disfavor silent letters.
set statusline=%<%f\ (%{&ft})\ %-4(%m%)%=%-19(%3l,%02c%03V%)
set tabstop=2 " Two-space tabs.
set textwidth=79 " Wrap text to 79 characters when formatting with gw.
set timeout timeoutlen=2000 ttimeoutlen=100 " Quick command timeout.
set title " Set window title.
set ttyfast " Improves redrawing.
set visualbell t_vb= " No beeps.
set winwidth=80 " Make active window 80 characters wide.
set whichwrap+=h,l " Let h and l wrap lines.
set wildignore+=.DS_Store " Ignore .DS_Store files.
let g:netrw_list_hide= '.DS_Store$' " Ignore them extra hard.
set wildmenu wildmode=longest,list " Better command-line completion.

if has('gui_running')
  set guifont=Inconsolata:h16
  set guioptions-=T " No toolbar.
  set colorcolumn=80
endif

if has('mouse')
  set mouse=a " Enable mouse in iTerm.
  set mousehide " Hide mouse pointer while typing.
endif

aug Autocmds
  au!
  " Attempt to recover cursor position when reopening a file.
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") |
        \ exe "normal! g`\"" | endif
  " Delete trailing whitespace on write (and any ! commands).
  autocmd BufWritePre * :%s/\s\+$//e

  " Four spaces for Python, JavaScript, Java, and C.
  autocmd FileType python,javascript,java,c setlocal ts=4 sw=4 sts=4

  " Use real tabs when editing makefiles.
  autocmd FileType make setlocal noexpandtab

  " Double semicolon comments for Scheme.
  autocmd FileType scheme set commentstring=;;\ %s
aug END

"-----------------------------------------------------------------------------.
" Add a few key mappings.                                                     |
"-----------------------------------------------------------------------------'
let mapleader=","

" Easy come, easy go.
cno %% <c-r>=expand('%:h').('/')<cr>
map <leader>e :edit %%
map <leader>E :edit ~/
nn <leader>w :up<cr>
nn <leader>W :up!<cr>
nn <leader>d :up<cr>:bd<cr>
nn <leader>q :q<cr>
nn <leader>Q :q!<cr>

" Make ^p/^n filter command history à la <up>/<down>.
cno <c-p> <up>
cno <c-n> <down>

" Copy to the end of a line with uppercase Y.
nn Y y$

" Clear search highlighting with return.
nn <cr> :nohlsearch<cr>

" Deselect with return.
vmap <cr> <esc>

" Quickly toggle between two files (cf. :help ^^).
nn <leader><leader> <c-^>

" Easy split navigation.
nn <c-o> <c-w>w
nn <c-l> <c-w>l
nn <c-h> <c-w>h
nn <c-j> <c-w>j
nn <c-k> <c-w>k

" Don't leapfrog wrapped lines.
nno k gk
nno gk k
nno j gj
nno gj j

" Select all.
nn <leader>a ggVG

" Secret Emacs tricks.
nn <leader>0 :quit<cr>
nn <leader>1 :only<cr>
nn <leader>2 :split<cr>
nn <leader>3 :vsplit<cr>
nn <c-a> <home>
nn <c-e> <end>
cno <c-g> <c-u><bs>
map! <c-a> <home>
map! <c-e> <end>
map! <c-f> <right>
map! <c-b> <left>
map! <c-d> <del>
" Warning: Mappings below require GitHub-invisible escape literal (^[).
cno b <s-left>
cno f <s-right>
cno <bs> <c-w>
nn x :

"-----------------------------------------------------------------------------.
" Add a few plugins.                                                          |
"-----------------------------------------------------------------------------'
Bundle 'gmarik/vundle'

Bundle 'flazz/vim-colorschemes'
  set background=light
  colorscheme solarized

Bundle 'jpalardy/vim-slime'
  let g:slime_target = "tmux"

Bundle 'sjl/gundo.vim'
  nn <f5> :GundoToggle<cr>

Bundle 'tpope/vim-rails'
  map <leader>m :Rmodel
  map <leader>v :Rview
  map <leader>c :Rcontroller

Bundle 'thinca/vim-quickrun'
  let g:quickrun_config={'*': {'split': ''}}
  set splitbelow

Bundle 'wincent/Command-T'
  nnoremap <silent> <leader>b :CommandTBuffer<CR>
  nnoremap <silent> <leader>f :CommandT<cr>
  nnoremap <silent> <leader>F :CommandTFlush<cr>\|:CommandT %:h<cr>
  let g:CommandTCancelMap=['<C-c>', '<C-x>', '<C-g>', '<ESC>']

Bundle 'ervandew/supertab'
Bundle 'godlygeek/tabular'
Bundle 'hallison/vim-ruby-sinatra'
Bundle 'hdima/vim-scripts'
Bundle 'IndexedSearch'
Bundle 'jergason/scala.vim'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'matchit.zip'
Bundle 'MatchTag'
Bundle 'othree/html5.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'python.vim'
Bundle 'scrooloose/syntastic'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-eunuch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'vim-coffee-script'
Bundle 'vim-ruby/vim-ruby'
Bundle 'VimClojure'
"-----------------------------------------------------------------------------,
" Go!                                                                         |
"-----------------------------------------------------------------------------'
