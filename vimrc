let mapleader = ","

" Variables for template interpolation
let email_address = "millerjl1701@gmail.com"
let fullname = "Jeffrey Miller"
let template_date_format_string = "%a %b %d %Y"

filetype off
call pathogen#infect()
syntax on
filetype plugin indent on

" set options
set ai            " auto indend
set si            " smart indent
set ff=unix       " file format unix
set nocompatible  " nocompatible mode
set ruler         " ruler the bottom
set modelines=0   " disable modelines for now...

set expandtab     " expand tabs to spaces
set tabstop=2     " define what our tabs are
set softtabstop=2 " soft tabstop
set shiftwidth=2  " # of spaces for auto indent
set smarttab      " smart tab (shiftwidth v tabstop)
set tw=0          " no textwidth set by default
set gdefault      " apply substitutions globally, not just first result
set cursorline    " underline current line with cursor
set laststatus=2  " display the status line
set number

" search options stuff
set showmatch     " show matching brackets
set matchtime=5   " how many tenths of a second to blink matching brackets for
set hlsearch      " highlight search on by default
set incsearch     " move curser as you type search terms
set autoread      " auto read in files that have changed underneath
set ignorecase    " with next line, mixed case searches are case sensitive
set smartcase	    " searches in all lower case are case insensitive


" press leader space to clear highlighting of searches
nnoremap <leader><space> :noh<cr>


" add \v to all searches to support regular perl style regex
nnoremap / /\v
vnoremap / /\v
cnoremap %s/ %s/\v


" unmap F1 - stupid help key
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


" insert the current date
nmap <Leader>_d "=strftime("%Y-%m-%d")<CR>p


set shellcmdflag=-ic  " set the ! shell to be a login shell to get at functions and aliases

"if version >= 703
"  set colorcolumn=80    " highlight the 80th column
"  set listchars=nbsp:¶,eol:¬,tab:>-,extends:»,precedes:«,trail:• " characters to use for 'specical' characters and non-printables
"endif


" split window settings
nnoremap <leader>w :vnew<CR><C-w>l
nnoremap <leader>wb :new<CR><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


set nomousefocus        " focus does not follow mouse
set splitbelow    " a new window is put below the current one
set splitright    " a new vertical window is right of the current one


" map to remove trailing whitespace from lines
nnoremap <silent><leader>W :%s/\v\s+$//g<cr>
" map to toggle invisible character display
nnoremap <silent><Leader>i :set invlist<CR>


" turn on syntax if we are in a color terminal
if &t_Co > 1
	syntax on
endif

au FocusLost * :wa

" xterm specifics
if &term =~ "xterm"
  set title
endif

" set title for screen use iconstring to set it correctly for tmux as well
if &term =~ "screen"
  set title
  set icon
endif

" Tabularize shortcuts
nmap <Leader>T :Tabularize /=><cr>
nmap <Leader>= :Tabularize /=<cr>


" NERDTree settings
autocmd vimenter * NERDTree | wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
nmap <Leader>N :NERDTree<cr>
let NERDTreeIgnore = ['\.pyc$']


" NERD Commenter Settings
let NERDSpaceDelims = 1
let g:NERDCustomDelimiters = {
  \ 'puppet': { 'left': '#', 'leftAlt': '/*', 'rightAlt': '*/' }
  \ }
let NERDAllowAnyVisualDelims = 1
let NERDCompactSexyComs = 0
let NERDSexyComMarker = ""


" Scratch settings
nmap <Leader>s :Scratch<cr>
nmap <Leader>S :Sscratch<cr>

" allow loose skeleton matching for templates
" ie init.pp (a puppet filetype) will match init_puppet
let g:EteSkeleton_loosefiletype = 1


" surround maps
nmap <leader>" cs'"
nmap <leader>' cs"'


" open vimrc in new vsplit for quick config changes
nmap <leader>v :tabnew ~/.vimrc<cr>:lcd ~/.vim<cr>
" " auto source it on save
autocmd! bufwritepost .vimrc source %


" git-fugitive shortcuts
nmap <leader>gs :Gstatus<cr>
nmap <leader>gb :Gblame<cr>



" syntastic module settings recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_eruby_ruby_quiet_messages = {"regex": "possibly useless use of a variable in void context"}
let g:syntastic_python_checkers = ['flake8']
let python_highlight_all=1

" map for syntastic errors window
nnoremap <LEADER>e :Errors<CR>
" syntastic checking mode
let g:syntastic_mode_map = { 'mode': 'active',
      \ 'active_filetypes': ['ruby', 'python', 'perl', 'shell', 'puppet' ],
            \ 'passive_filetypes': ['php', 'html'] }
" enable puppet module detection
let g:puppet_module_detect=1


" gundo settings
nnoremap <F4> :GundoToggle<CR>


" vim-signify settings
let g:signify_vcs_list = [ 'git' ]
highlight SignifySignAdd    cterm=bold ctermbg=none  ctermfg=119
highlight SignifySignDelete cterm=bold ctermbg=none  ctermfg=167
highlight SignifySignChange cterm=bold ctermbg=none  ctermfg=227
highlight SignColumn ctermbg=black

" Gist settings
let g:gist_post_anonymous = 1
let g:gist_clip_command = 'pbcopy'
let g:gist_open_browser_after_post = 1

let g:vim_markdown_folding_disabled = 1
