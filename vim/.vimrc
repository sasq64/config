" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ######## Plugins {{{

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
 silent !mkdir -p ~/.vim/autoload > /dev/null 2>&1   
 execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'hienvd/vim-stackoverflow'
Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
"" Advanced GIT handling
Plug 'tpope/vim-fugitive'
"" Like git-gutter, but for multiple systems
Plug 'mhinz/vim-signify'
"" Mercurial support
Plug 'ludovicchabant/vim-lawrencium'
"" Small wrapper on top of clang-format
Plug 'rhysd/vim-clang-format', { 'for': 'cpp' }
"" Define your own operators easily
Plug 'operator-user'
"" Allow a local vim config per directory
Plug 'LucHermitte/lh-vim-lib'
Plug 'LucHermitte/local_vimrc'
"" Use Brackets leader for several next/prev shortcuts
Plug 'tpope/vim-unimpaired'
"" Operate on surrounding pairs, like quotes, parentheses..
Plug 'tpope/vim-surround'
"" Makes '.' works with more stuff
Plug 'tpope/vim-repeat'
"" Search in Dash from VIM
Plug 'rizzatti/dash.vim'
"" Advanced auto completion
Plug 'Valloric/YouCompleteMe'
"", { 'for': 'cpp' }
"" Jump to include
Plug 'a.vim'
"" Run compile in background
Plug 'tpope/vim-dispatch'
"" Fast file opener
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

"" Distraction free mode
Plug 'junegunn/goyo.vim'

"" Run interactive processes, used by Unite
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
"" Fuzzy search everything
Plug 'Shougo/unite.vim'
"" File view
Plug 'Shougo/vimfiler.vim'
"" Move between vim splits and tmux splits seamlessly
Plug 'christoomey/vim-tmux-navigator'
"" Silver searcher greping
Plug 'rking/ag.vim'

Plug 'scrooloose/syntastic'

Plug 'pangloss/vim-javascript'

" Personal Wiki / TODO / NOTES
Plug 'vimwiki/vimwiki'

"" DISABLED PLUGINS

" iTerm cursor / focus
" Plug 'sjl/vitality.vim'
" Plug 'ConradIrwin/vim-bracketed-paste'
" Adapt tabsize to current project
" Plug 'tpope/vim-sleuth'

" Plug 'tpope/vim-speeddating'
" Plug 'mattn/calendar-vim'

" Todo / Notes etc
" Plug 'jceb/vim-orgmode'

" Extra commands for C/C++ development
" Plug 'vim-scripts/c.vim'
"
" Plug 'wincent/command-t'

"" Smart snippets
" Plug 'SirVer/ultisnips'
" Plug 'honza/vim-snippets'

" Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }


"" Fuzzy file open like Sublime
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'bling/vim-airline'
" Plug 'L9'
" Plug 'airblade/vim-gitgutter'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'w0ng/vim-hybrid'
" Plug 'wincent/command-t'
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'lyuts/vim-rtags'

call plug#end()

" }}}

" ######## Basic Options {{{
filetype plugin indent on

set encoding=utf-8
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set number
set hidden
set incsearch
syntax enable
set wildmenu
set mouse=a
set wildmode=longest:list,full

set tabstop=4
set shiftwidth=4

set nowrap
set whichwrap+=<,>,h,l,[,]
set listchars=tab:──,trail:.,precedes:<,extends:>
set laststatus=2
set showcmd
set ttymouse=sgr " Support mouse clicks beyond col 2xx
set background=dark
" monokai-black
set mouse=a
" autocmd FileType python set ts=4|set sw=4|set noex
set hlsearch
set noswapfile
set relativenumber
set cursorline

" }}}




set wildignore=*.o,*.obj,build,artifacts
if has('osx')
  colorscheme jellybeans
else
  colorscheme monokai-black
endif

" '%%' expands to path of current file in command mode
cabbr <expr> %% expand('%:p:h')

" For mac/gui vim
autocmd! GUIEnter * set vb t_vb=
set guifont=Hack:h12
highlight Pmenu ctermbg=blue gui=bold

autocmd FileType vim setlocal foldmethod=marker

autocmd FileType javascript setlocal shiftwidth=4 expandtab

autocmd! GUIEnter * set vb t_vb= " Turn off visual bell in GUI mode
set guifont=Hack:h12

" Autocomplete menu color
highlight Pmenu ctermbg=blue gui=bold

function! FindFunction(name)
 cexpr! system('ag --vimgrep -G ".(cs\|c\|cpp\|h\|java)$" "[A-Za-z\*]+\s+([A-Za-z_]+::)?' . a:name . '\s*\([^\)]*\)(\s+[a-z]+)*\s*(?=\{)"')
endfunction

function! FindClass(name)
 cexpr! system('ag --vimgrep -G ".(cs\|c\|cpp\|h\|java)$" "(class\|struct\|interface\|namespace)\s+([A-Za-z_]+\s+)*' . a:name . '\s+(?!;)"')
endfunction

function! FindDefine(name)
 cexpr! system('ag --vimgrep -G ".(c\|cpp\|h)$" "define\s+' . a:name . '(\s\|\()"')
endfunction

nmap <leader>af "zyiw:call FindFunction(@z)<cr>
nmap <leader>ac "zyiw:call FindClass(@z)<cr>
nmap <leader>ad "zyiw:call FindDefine(@z)<cr>


" ######## Plugin settings {{{
let g:ycm_auto_trigger = 0

let wiki = {}
let wiki.path = '~/Dropbox/conf/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]

let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'
" }}}

" ######## Keyboard mappings {{{

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" Jump to diff changes
nmap <leader>gj <plug>(signify-next-hunk)
nmap <leader>gk <plug>(signify-prev-hunk)
omap ic <plug>(signify-motion-inner-pending)
xmap ic <plug>(signify-motion-inner-visual)
omap ac <plug>(signify-motion-outer-pending)
xmap ac <plug>(signify-motion-outer-visual)

" Dash & Google search
:nmap <silent> <leader>d <Plug>DashSearch
:nmap <silent> <leader>g :Google<CR>

" SPACE/BACKSPACE up/down in normal mode
:nmap <space> <c-d>
:nmap <backspace> <c-u>

" Switch cpp/h - SHIFT also searches for word under cursor
nnoremap <f3> :A<cr>
nnoremap [1;2R "zyiw:A<cr>/z<cr>

" Kill Buffer
map <F4> :bp\|bd #<CR>
imap <F4> <C-O>:bw<CR>

" Build project
map <F7> :wa\|Make<CR>
imap <F7> <C-O>:wa\|Make<CR>

" Run project
map [15;2~ :execute "!" . b:run_command<cr>
map <f5> :execute "!" . b:run_command . " > output.log &"<cr>

" Next / Prev quickfix
map <F6> :cn<CR>
map [17;2~ :cp<CR>
imap <F6>  <C-O>:cn<CR>

" Save file
imap <F9> <Esc>:w<cr>
nmap <F9> :w<cr>
nmap [20;2~ :wa<cr>

" Look for symbol under cursor
nnoremap <F2> :YcmCompleter GoTo<CR>
nnoremap [26~ :Ag<CR>

" Open files with `fzf`
nnoremap  :Files<CR>
nnoremap g :GitFiles<CR>

nnoremap  :Unite buffer<cr>

nnoremap  "*p
nnoremap  "*y
nnoremap  :ed %%/

nnoremap <leader>b :Unite buffer<cr>
nnoremap <leader>f :Unite line:all -input=.*[[:alnum:]*&]\s\+[[:alnum:]]\+(.*)\($\\|[^\;]\)<cr>

" }}}

" ######## TMUX {{{
"nnoremap <silent> <C-Right> <c-w>l
"nnoremap <silent> <C-Left> <c-w>h
"nnoremap <silent> <C-Up> <c-w>k
"nnoremap <silent> <C-Down> <c-w>j

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-Left> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-Down> :TmuxNavigateDown<cr>
nnoremap <silent> <C-Up> :TmuxNavigateUp<cr>
nnoremap <silent> <C-Right> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

map [D <C-Left>
map [C <C-Right>
map [A <C-Up>
map [B <C-Down>

" map! [D <C-Left>
" map! [C <C-Right>
" map! [A <C-Up>
" map! [B <C-Down>

" }}}

" ######## Statusline {{{ 

let s:haveVcPrompt = executable('vcprompt')

function! GetBranch()
	if ! s:haveVcPrompt
		return ""
	endif
	let s:path = expand('<afile>:p:h')
	if !isdirectory(s:path)
		return ""
	endif
	" return system('cd ' . s:path . ' ; vcprompt -f "%b"')
    return system('vcprompt -f "%b"')
endfunction
au BufEnter * let g:current_branch=GetBranch()
au InsertEnter * hi StatusLine ctermbg=6 
au InsertLeave * hi StatusLine ctermbg=8

hi StatusLine ctermfg=15 ctermbg=8
hi User4 ctermfg=12
hi User5 ctermfg=15 ctermbg=4
hi User6 ctermfg=15 ctermbg=1

hi StatusLine guibg=gray guifg=white
hi User4 guifg=blue
hi User5 guifg=white guibg=blue
hi User6 guifg=white guibg=red

set statusline=%f%q%4*%m%*%=%5*\ %{g:current_branch}\ %*%6*%4l,%-2v\ /\ %L\ %*

" }}}

" {{{ ######## Smart HOME : Toggle between column 0 and beginning of text
function! ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>
" }}}

