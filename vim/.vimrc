" Let the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-scripts/c.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'tpope/vim-fugitive'
Plugin 'mhinz/vim-signify'
Plugin 'ludovicchabant/vim-lawrencium'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'rhysd/vim-clang-format'
Plugin 'operator-user'
Plugin 'LucHermitte/lh-vim-lib'
Plugin 'LucHermitte/local_vimrc'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-surround.git'
Plugin 'rizzatti/dash.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

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
set background=dark
colorscheme monokai
set mouse=a
autocmd FileType python set ts=4|set sw=4|set noex
set hlsearch
set noswapfile

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" CtrlP defaults
let g:ctrlp_cmd = 'CtrlPMRU'
let g:ctrlp_max_files = 0

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


" F4 = Kill Buffer
map <F4> :bw<CR>
imap <F4> <C-O>:bw<CR>
" F7 = Build
map <F7> :wa\|make<CR>
imap <F7> <C-O>:wa\|make<CR>
" F5 = Run
map <F5> :wa\|make\ run<CR>
imap <F5> <C-O>:wa\|make\ run<CR>

"""""""""""" STATUSLINE
function! GetBranch()
	let s:path = expand('<afile>:p:h')
	if s:path
		cd `=s:path`
	endif
    return system('vcprompt -f "%b"')
endfunction
au BufEnter * let g:current_branch=GetBranch()
au InsertEnter * hi StatusLine ctermbg=6 
au InsertLeave * hi StatusLine ctermbg=8

hi StatusLine ctermfg=15 ctermbg=8
hi User4 ctermfg=12
hi User5 ctermfg=15 ctermbg=4
hi User6 ctermfg=15 ctermbg=1
set statusline=%f%q%4*%m%*%=%5*\ %{g:current_branch}\ %*%6*\ %4l,%-2v\ /\ %L\ %*\ 🕒\ %{strftime('%H:%M')}\ 

set wildignore=*.o,*.obj,build,artifacts

" Smart HOME : Toggle between column 0 and beginning of text
function ExtendedHome()
    let column = col('.')
    normal! ^
    if column == col('.')
        normal! 0
    endif
endfunction
noremap <silent> <Home> :call ExtendedHome()<CR>
inoremap <silent> <Home> <C-O>:call ExtendedHome()<CR>

" '%%' expands to path of current file
cabbr <expr> %% expand('%:p:h')

" For mac/gui vim
autocmd! GUIEnter * set vb t_vb=
set guifont=Hack:h12
