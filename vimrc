" ============== FILE-INFO =======================
" File: .vimrc
" Author: Bren Smith (bren@aja.com)
" Version: 1.5
" Last Change:2013.07.25 Thu 04:04 PM
" Note: This .vimrc file works on both Mac and Unix boxen as well as with MacVim. Yay!
" Note: If you change this file, make sure to push it out to all hosts (puffy, shortbus, puppet, intranet & www)!
" ================================================

set nocompatible                "Use Vim specific settings, must be first as it changes other options

" ================ GENERAL CONFIG ====================

au FocusLost * :wa					"Automatically backup the file when focus is lost from the window (might want to turn this off on MacVim)
cd ~								"Set the current directory to my home directory
set autoread						"Automatically reload files changed outside vim when they are changed on disk
set autowrite						"Whenever a buffer is switched or closed, save the changes to disk
set backspace=indent,eol,start		"Allow backspace in insert mode
set bomb							"Sets the Byte Order Mark for utf-8 encoding purposes
set encoding=utf-8					"All of the text inside Vim will be encoded in utf-8 (complete Unicode and backwards ASCII compatibility)
set ffs=unix,dos,mac				"Allow Vim to work natively with all main EOL characters
set gcr=a:blinkon600				"Disable cursor blink by setting "a:blinkon0"
set hidden							"Enables unsaved buffers
set history=1000					"Store a metric ass load of :cmdline history
set nomodeline						"Potential exploit prevented
set number							"Line numbers are good
set title							"In xterm, set the name of the current file as the title
syntax enable						"Turn on syntax highlighting

" ================ COLORSCHEME =====================

" Note too that you can quickly check a potential color scheme from the Vim
" command line by using :colorscheme followed by the name itself.
" or by using the :COLORSCROLL plugin along with the left and right arrows.

colorscheme motus					"Use this colorscheme on MacVim
" colorscheme vibrantink			"Use this colorscheme on all other xterm terminals

" ================ VISUAL ==========================

set background=dark					"Make the background dark like my personality
set ch=2							"Set the height of the command bar to 2
set colorcolumn=+1					"Place a color column 1 column after textwidth value
" hi ColorColumn guibg=#ff96ef		"This makes the end ColorColumn a deep dark red
" set cursorline						"Creates a highlighted row showing you where you are
" hi cursorline guibg=#ff96ef			"This will set the color of the cursorline
" set cursorcolumn					"Creates a highlighted column showing you where you are
" hi cursorcolumn guibg=#ff96ef		"Sets the color of the cursorcolumn
" set guifont=Monaco:h17			"Not sure how well this will work on anything other than MacVim
set guifont=Cousine:17
" set guifont=Anonymous Pro:17
set mouse=a							"Forces non-gui versions of Vim to allow for mouse usage
set ttymouse=xterm2					"Get the mouse going in term
set nolazyredraw					"Divert power to the redraw engines
set nostartofline					"Don't move the cursor to the start of the line when scrolling
set report=0						"Report every change to me
set ruler							"Gives us our cursor position in the form of "line, col" down in the status line
set t_Co=256						"For allowing use of 256 colors (sometimes). If seeing phuqued up colorschemes, disable this
set visualbell						"Basically? Shut the hell up, and just flash the screen

" ================ CHEKOV'S INWISIBLES ======================
" Note: Unicode characters can be inserted by typing ctrl-vu followed by the 4 digit hexadecimal code.
" Using "00ac" for the ¬ symbol and "25b8" for the ▸ symbol and "2620" for the ☠ symbol. 
" For more unicodes go to " http://en.wikipedia.org/wiki/List_of_Unicode_characters

set list							"Display inwisibiles
set listchars=tab:▸⋅,eol:¬,trail:⋅,nbsp:⋅
highlight NonText guifg=#222222		"Invisible character colors for nontext
highlight SpecialKey guifg=#222222	"Invisible character colors for tab

" ================ SEARCH SETTINGS =================

set hlsearch						"Highlight searches by default
set ignorecase						"Ignore case while searching
set incsearch						"Find the next match as we type the search
set matchtime=3						"Time to match for
set showmatch						"Show matching brace
set smartcase						"Only be case sensitive if the search string contains an upper case letter
set viminfo='100,f1					"Save up to 100 marks, enable capital marks
set virtualedit=block				"Allow free form visual selections

" ================ TURN OFF SWAP FILES ============== 

set noswapfile
set nobackup
set nowb

" ================ PERSISTENT UNDO ==================

set undofile
set undodir=~/.vim/backups

" ================ INDENTATION ======================

filetype indent on
filetype plugin on
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4
set wrap							"Tell vim to wrap, but only...
set linebreak						"wrap lines at convenient word boundaries

" ================ FOLDS ============================ 

set foldmethod=indent				"Fold based on indent
set foldnestmax=3					"Deepest fold is 3 levels
set nofoldenable					"Dont fold by default

" ================ COMPLETION =======================

set wildmode=list:longest,full		"Make file completion just like bash
set wildmenu						"Enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~			"Stuff to ignore when tab completing

" ================ SCROLLING ========================

set scrolloff=8						"Start scrolling when we're 8 lines away from margins
set sidescroll=1
set sidescrolloff=7

" ================ STATUSLINE =======================

set laststatus=2					"Always show the status line
set showcmd							"Show incomplete commands down in the status line
set showmode						"Show current mode down in the status line

" ================ SPELLCHECK =======================

set nospell							"Turn off spelling, however...
autocmd filetype txt setlocal spell "Spell check only when writing text files
set spelllang=en_us					"and use english for your dictionary

" ================ KEYBINDINGS ======================

" Vee von't let you use those awful arrow keys! Ve vill train you mit shock therapy!

inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
nnoremap <up> <nop>

inoremap jj <ESC>					"Allow you to use the jj key rather than reach up for the ESC

nmap <F3> a<C-R>=strftime("%Y.%m.%d %a %I:%M %p")<CR><Esc>
imap <F3> <C-R>=strftime("%Y.%m.%d %a %I:%M %p")<CR>

" ================ KEY MACROS =======================

iab _hemail bren@lene.com
iab _name Bren Smith
iab _sig b<CR>--<CR>Bren Smith<CR>AJA Video Systems, Inc.<CR>(530) 271-3156 desk<CR>(530) 559-1000 cell<CR>bren@aja.com
iab _wemail bren@aja.com
iab teh the
