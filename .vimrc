filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"---- General ----"
let mapleader=","                               "define the leader
set background=dark                             "assume a dark background
filetype plugin on                              "load filetype plugins/indent settings
syntax on                                       "syntax highlightning on
set mouse=a                                     "automatically enable mouse usage
set autoread                                    "read file automaticy if it has been changed outside VIM
set nocompatible                                "no need for vi compatiblity
set shortmess+=filmnrxoOtT                      "avoid HIT ENTER
set viewoptions=folds,options,cursor,unix,slash
set virtualedit=onemore                         "allow for cursor beyond last character
set spell                                       "spell checking on
set autoindent                                  "set autoindent on the level where we are
set encoding=utf-8                              "set the file encding to utf-8
set fileformats=unix,dos,mac                    "default file types
set nobackup                                    "make backup files
set clipboard+=unnamed                          "share windows clipboard
set hidden                                      "change buffers without saving
set scrolloff=3
set foldenable                                  "auto fold code
set ttyfast
set undofile

"---- VIM UI ----"
set cursorline                                  "highlight the current line
set cmdheight=1                                 "explicitly set the height of the commandline
set showcmd                                     "show (partial) command in statusline
set wildmenu                                    "turn on wildmenu
set wildmode=list:longest                       "set wildmenu to list choice
set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png
set whichwrap=b,s,h,l,<,>,[,]                   "backspace and cursor keys to wrap to
set number                                      "show line numbers
set ruler                                       "always show current position
set backspace=indent,eol,start                  "set backspace config
set textwidth=79                                "set textlength
set colorcolumn=85                              "set colorcolumn
set noerrorbells                                "no sound on errors
set visualbell t_vb=
set wrap                                        "do not wrap long lines
set list                                        "show invisible characters
set listchars=tab:>-,trail:•                 "but only show tabs and trailing spaces"
set wrapmargin=0
set completeopt=menu,longest,preview            "more autocomplete <CTRL-P> options
set laststatus=2                                "make last line 2 lines deep we always see status
set nostartofline                               "leave my cursor where it was
set showmode                                    "display currentmode
set linespace=0                                 "no extra spaces between rows
set relativenumber

"---- Searching and Moving ----"
set ignorecase                                  "ignore case when searching
set smartcase                                   "set case insensitivy
set gdefault                                    "enable substitution globally on lines
set incsearch                                   "make search act like search in modern browsers
set showmatch                                   "show matching brackets when indicator is over them
set hlsearch                                    "highlicht search

"---- Colors and Fonts ----"
set guifont=Consolas:h14

"---- Indents and tab ----"
set autoindent                                  "set the cursor at same indent as line above
set smartindent                                 "try to be smart about indenting
set expandtab                                   "expand <Tab>s with spaces; death to tabs!
set shiftwidth=4                                "spaces for each step of (auto)indent
set softtabstop=4                               "set virtual tab stop
set tabstop=4                                   "for proper display of files with tabs
set shiftround                                  "always round indents to multiple of shiftwidth
set copyindent                                  "use existing indents for new indents

"---- Colors and Fonts ----"
colorscheme molokai

"---- Mapping ----"
map <F1> :previous<CR>
map <F2> :next<CR>
map <F3> :NERDTreeToggle<CR>
map <F4> :set invnumber<CR>
map <F9> :tabprevious<CR>
map <F10> :tabnext<CR>
map ,tn :tabnew<CR>
map ,te :tabedit
map ,tc :tabclose<CR>
map ,tm :tabmove

vnoremap <silent> * :call VisualSearch(?f?)<CR>
vnoremap <silent> # :call VisualSearch(?b?)<CR>

"Map space to / (search) and c-space to ? (backwards search)
map <space> /
map <c-space> ?

let g:fuf_file_exclude = '\v\~$|\.o$|\.exe$|\.bak$|\.swp|\.class$|\.dll$'
map <leader>ff :FufFile **/<CR>
"nnoremap <C-t> :<C-u>FufFile **/<CR>
map <C-t> <ESC>:FufFile **/<CR>
map <leader>fb :FufBuffer **/<CR>
map <leader>fd :FufDir<CR>
map <leader>fr :FufRenewCache<CR>

"this unsets the "the last search pattern" by hitting return in command-mode"
nnoremap <CR> :noh<CR>
nnoremap <tab> %
vnoremap <tab> %

"Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

inoremap jj <ESC>
nnoremap <leader>e :e ~/.vimrc<cr>                              "edit my .vimrc file
nnoremap <leader>u :source ~/.vimrc<cr> " update .vimrc         "update the system with the .vimrc file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>                "clean out empty spaces at end of line
nnoremap <leader>ft Vatzf                                       "fold HTML code
nnoremap <leader>v V`]                                          "reselect just pasted text
