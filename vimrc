" -Author: Mark Arranz
" Date of last revision: 2014/10/30


" GENERAL SETTINGS
" ------------------------------------------------------------------------
" Set 'nocompatible' to ward off unexpected things that your distro might 
" have made, as well as sanely reset options when re-sourcing .vimrc.
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Pathogen manages 'runtimepath' and makes it easier to install plugins and
" runtime files in their own private directories.
execute pathogen#infect()


" KEY MAPPING
" -------------------------------------------------------------------------
" <SPACE> MAPS: NORMAL, VISUAL, SELECT, AND OPERATOR PENDING MODES
" Make is easier to <Esc> using ` in place of <Esc> key.
:map ` <Esc>

" NERDTree Toggle
:map <C-n> :NERDTreeToggle<CR>

" Press Ctrl-` in order to use ` as a character.
:noremap <C-`> `

" ! MAPS: INSERT AND COMMAND LINE MODES
" (none)

" NORMAL MODE MAPS:
" Switch colon and semi-colon
:nnoremap ; :
:nnoremap : ;

" Press Space to turn off highlighting & clear any message already displayed.
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" INSERT MODE MAPS:
" Press ` to <Esc> into normal mode.
:imap ` <Esc>
:inoremap ~ `
:inoremap <C-q> ~

" VISUAL AND SELECT MODE MAPS:
" (none)

" VISUAL MODE MAPS:
"(none)

" SELECT MODE MAPS:
" (none)

" COMMAND LINE MODE MAPS:
" (none)

" OPERATOR PENDING MODE MAPS:
" (none)


" APPEARANCE SETTINGS
" -------------------------------------------------------------------------
" Set colorscheme compatability to allow 256 color configuration.
set t_Co=256

" Set colorsheme to 'zenburn' theme. Requires 256 color.
:colorscheme zenburn

" Set default font style and size.
set guifont=Lucida_Console:h10:cDEFAULT

" Set default vim window size.
set lines=51 columns=120

" Display the cursor position on the last line fo the screen or in the
" status line of a window.
set ruler

" Always display the statsu line, even if only one window is displayed.
set laststatus=2

" Show partial commands in the last line of the screen.
set showcmd

" Set the command window height to 2 lines, to avoid many cases of having to
" press <Enter> to continue.
set cmdheight=2

" Display line numbers on the left.
set number


" BEHAVIOR SETTINGS
" ------------------------------------------------------------------------- 

" Turn ON color syntax highlighting.
set ofu=syntaxcomplete#Complete

" Allows re-use of the same window for multiple files. Allows user to switch
" from an unsaved buffer without saving it first.
set hidden 

" Vim will automatically change into the current working directory.
set autochdir

" Better command-line completion.
set wildmenu

" Enable code folding.
set foldenable

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong.
set visualbell

" Highlights current line
set cursorline

" Higlights current column
" set cursorcolumn

" Allow backspacing.
set backspace=indent,eol,start

" SEARCH SETTINGS
" -------------------------------------------------------------------------
" Highlight searches (use <C-L> to temporarily turn off highlighting.
" set hlsearch

" Set incremental search ON. Searches start when you type the first
" character of the search string. As you type in more characters,
" the search is refined.
set incsearch

" Highlights the matching braces/brackets/parens when typing.
set showmatch

" Use case insensitive search, except when using capital letters.
set ignorecase
set smartcase


" INDENTATION SETTINGS
" -------------------------------------------------------------------------
"  Indentation settings for using 4 spaces instead of tabs.
set shiftwidth=4
set softtabstop=4
set expandtab

" Indentation settings for using hard tabs for indent. Display tabs as 4
" characters wide.
set tabstop=4

" Copy the indentation from the previous line, when starting a new line.
set autoindent

" Automatically inserts one extra level of indentation in some cases, and
" works for C-like files.
set smartindent


" FILETYPE SETTINGS
" -------------------------------------------------------------------------
" HTML Settings

" Set indent settings to 2 spaces instead of 4
" -- DISABLED for use with Visual Studio work env --
" autocmd FileType html set shiftwidth=2
" autocmd FileType html set softtabstop=2

" JavaScript Settings

" Set indent settings to 2 spaces instead of 4
" -- DISABLED for use with Visual Studio work env --
" autocmd FileType js set shiftwidth=2
" autocmd FileType js set softtabstop=2
