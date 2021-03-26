"; Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" ######## Plugins {{{

" Load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
 silent !mkdir -p ~/.vim/autoload > /dev/null 2>&1
 execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.vim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'


"Plug 'RishabhRD/popfix'
"Plug 'RishabhRD/nvim-cheat.sh'

Plug 'dbeniamine/cheat.sh-vim'

Plug 'octol/vim-cpp-enhanced-highlight', { 'for': 'cpp' }
Plug 'eraserhd/parinfer-rust'
" Plug 'guns/vim-sexp'
" Plug 'tpope/vim-sexp-mappings-for-regular-people'
Plug 'inkarkat/vim-ingo-library'
Plug 'tikhomirov/vim-glsl'
Plug 'inkarkat/vim-SyntaxRange'

"" Swap things
Plug 'tommcdo/vim-exchange'
" flatbuffers syntax
" Plug 'zchee/vim-flatbuffers'
Plug 'leissa/vim-acme'
" Plug 'wakatime/vim-wakatime'
Plug 'udalov/kotlin-vim'


Plug 'srstevenson/vim-picker'
"" Advanced GIT handling
Plug 'tpope/vim-fugitive'
"" Use Brackets leader for several next/prev shortcuts
Plug 'tpope/vim-unimpaired'
"" Operate on surrounding pairs, like quotes, parentheses..
Plug 'tpope/vim-surround'
"" Makes '.' works with more stuff
Plug 'tpope/vim-repeat'
"" Smart commenter/uncommenter
Plug 'tpope/vim-commentary'

"" Like git-gutter, but for multiple systems
Plug 'mhinz/vim-signify'
"" Mercurial support
" Plug 'ludovicchabant/vim-lawrencium'
"" Define your own operators easily
Plug 'vim-scripts/operator-user'
"" Search in Dash from VIM
" Plug 'rizzatti/dash.vim'
Plug 'KabbAmine/zeavim.vim'
"" Jump to include
Plug 'micbou/a.vim'
"" Run compile in background
" Plug 'tpope/vim-dispatch'
"" Fast file opener
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'antoinemadec/coc-fzf'
"" Distraction free mode
Plug 'junegunn/goyo.vim'

"" Silver searcher greping
Plug 'rking/ag.vim'

Plug 'jackguo380/vim-lsp-cxx-highlight'
" let g:lsp_cxx_hl_use_text_props = 1
" Personal Wiki / TODO / NOTES
" Plug 'vimwiki/vimwiki'

" Plug 'vim-ctrlspace/vim-ctrlspace'

" Display file outline
Plug 'majutsushi/tagbar'
Plug 'editorconfig/editorconfig-vim'


"" Switch order of arguments
Plug 'AndrewRadev/sideways.vim'

"" For text writing
" Plug 'reedes/vim-pencil'

" Plug 'embear/vim-foldsearch'

" Find and replace in multiple files
" Plug 'brooth/far.vim'
" Plug 'aserebryakov/vim-todo-lists'
" Plug 'godlygeek/tabular'
" Plug 'plasticboy/vim-markdown'
" Plug 'JamshedVesuna/vim-markdown-preview'

" Switch word with alternatives
Plug 'AndrewRadev/switch.vim'
" Plug 'huawenyu/neogdb.vim'
Plug 'itchyny/lightline.vim'
" Plug 'kassio/neoterm'

" Plug 'szw/vim-g'
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'mhinz/vim-startify'

"" Lanugages

"" Generic

if !exists('g:vscode')
"" Advanced auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Valloric/YouCompleteMe', { 'for': ['java', 'rust'] }
Plug 'neomake/neomake'
" Plug 'dense-analysis/ale'
endif

Plug 'pboettch/vim-cmake-syntax'
"" C++

"" Small wrapper on top of clang-format
Plug 'rhysd/vim-clang-format'
", { 'for': 'cpp' }


"" Racket
Plug 'wlangstroth/vim-racket'
"" Lua
Plug 'tbastos/vim-lua'
"" D
Plug 'idanarye/vim-dutyl'
"" Swift
Plug 'keith/swift.vim'
"" Julia
Plug 'JuliaEditorSupport/julia-vim'
"" Dart
Plug 'dart-lang/dart-vim-plugin'
"" Javascript
Plug 'pangloss/vim-javascript'


"" Plug 'w0rp/ale'
call plug#end()

"" DISABLED PLUGINS

" Plug 'liuchengxu/vista.vim'
" Plug 'arakashic/chromatica.nvim'
"
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'easymotion/vim-easymotion'
" Plug 'vim-scripts/Conque-GDB'
" Plug 'CoatiSoftware/vim-sourcetrail'

" Live syntax checking
"Plug 'scrooloose/syntastic'

"" Move between vim splits and tmux splits seamlessly
" Plug 'christoomey/vim-tmux-navigator'
"" Case/plural handling transformations
" Plug 'tpope/vim-abolish'
"" Allow a local vim config per directory
" Plug 'LucHermitte/lh-vim-lib'
" Plug 'LucHermitte/local_vimrc'

" iTerm cursor / focus
" Plug 'sjl/vitality.vim'
" Plug 'ConradIrwin/vim-bracketed-paste'
"
" Adapt tabsize to current project
" Plug 'tpope/vim-sleuth'
" Plug 'tpope/vim-speeddating'
" Plug 'mattn/calendar-vim'
" Todo / Notes etc
" Plug 'jceb/vim-orgmode'
" Extra commands for C/C++ development
" Plug 'vim-scripts/c.vim'
" Plug 'wincent/command-t'
" Fuzzy file open like Sublim
" Plug 'ctrlpvim/ctrlp.vim'
" Plug 'bling/vim-airline'
" Plug 'L9
" Plug 'airblade/vim-gitgutter'
" Plug 'terryma/vim-multiple-cursors'
" Plug 'w0ng/vim-hybrid'
" Plug 'wincent/command-t'
" Plug 'artur-shaik/vim-javacomplete2'
" Plug 'lyuts/vim-rtags'

" Smart snippets
" Plug 'SirVer/ultisnips
" Plug 'honza/vim-snippets
"

" }}}

" ######## Basic Options {{{

filetype plugin indent on



set virtualedit=onemore
set encoding=utf-8
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

set autoread
au CursorHold * checktime 

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

set number
set hidden
set incsearch
syntax enable
set wildmenu
set mouse=a
set wildmode=longest:list,full

" Apply indentation to wrapping
set bri
" set briopt=shift:4
set linebreak
set modeline
set modelines=5

set tabstop=4
set shiftwidth=4
set textwidth=0
set wrap
set whichwrap+=<,>,h,l,[,]
set listchars=tab:──,trail:.,precedes:<,extends:>
set laststatus=2
set showcmd
if has("nvim")
    set inccommand=nosplit
else
    set ttymouse=sgr " Support mouse clicks beyond col 2xx
endif
set background=dark
" monokai-black
set mouse=a
" autocmd FileType python set ts=4|set sw=4|set noex
set hlsearch
set noswapfile
set relativenumber
set cursorline
set clipboard=unnamed,unnamedplus
nnoremap Y y$

packadd termdebug

"" C# error message
set efm+=,%f\(%l\\,%c):\ %m


set wildignore="*.o,*.obj,*.a,*.lib,*.dylib,*/.git,*/.hg,build,artifacts"
set termguicolors
colorscheme one

set expandtab  
set nolist

if has('osx')
  " iTerm Cursor shapes
  let &t_SI = "\<Esc>]1337;CursorShape=1\x7"
  let &t_EI = "\<Esc>]1337;CursorShape=0\x7"
endif

" '%%' expands to path of current file in command mode
cabbr <expr> %% expand('%:p:h')

" For mac/gui vim
autocmd! GUIEnter * set vb t_vb=
set guifont=JetBrains\ Mono:h12
" highlight Pmenu ctermbg=blue gui=bold
autocmd! GUIEnter * set vb t_vb= " Turn off visual bell in GUI mode

autocmd FileType vim setlocal foldmethod=marker
autocmd FileType javascript setlocal shiftwidth=4 expandtab
autocmd FileType ruby setlocal shiftwidth=4 expandtab

augroup quickfix
    autocmd!
    autocmd FileType qf setlocal wrap
augroup END

" Autocomplete menu color
" highlight Pmenu ctermbg=blue gui=bold

" Show syntax highlighting groups for word under cursor
nmap <leader>sp :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

nmap <leader>cs /\vconst\s+([a-zA-Z:_]+)(\&?)<CR>
nmap <leader>cm :s//\1 const\2/<CR>

let g:one_allow_italics = 1 

au BufEnter * if &buftype == 'terminal' | :startinsert | endif
autocmd BufNewFile,BufRead *.asm,*.inc set ft=acme
autocmd BufNewFile,BufRead *.djinni set syntax=djinni

" augroup Term
"   au!
"   autocmd TermOpen * setlocal nonumber norelativenumber
" augroup END

" set list

" }}}

" ######### FZF {{{
" Files + devicons
function! Fzf_dev()
  let l:fzf_files_options = '-m -x +s' 
  " '--preview "rougify {2..-1} | head -'.&lines.'"'

  function! s:files()
    let l:files = split(system($FZF_DEFAULT_COMMAND), '\n')
    return s:prepend_icon(l:files)
  endfunction

  function! s:prepend_icon(candidates)
    let l:result = []
    for l:candidate in a:candidates
      let l:filename = fnamemodify(l:candidate, ':p:t')
      let l:icon = WebDevIconsGetFileTypeSymbol(l:filename, isdirectory(l:filename))
      call add(l:result, printf('%s %s', l:icon, l:candidate))
    endfor

    return l:result
  endfunction

  function! s:edit_file(item)
    let l:pos = stridx(a:item, ' ')
    let l:file_path = a:item[pos+1:-1]
    execute 'silent e' l:file_path
  endfunction

  call fzf#run({
        \ 'source': <sid>files(),
        \ 'sink':   function('s:edit_file'),
        \ 'options': '-m ' . l:fzf_files_options,
        \ 'down':    '40%' })
endfunction

function! FzyCommand(choice_command, vim_command)
  try
    let output = system(a:choice_command . " | fzy ")
  catch /Vim:Interrupt/
    " Swallow errors from ^C, allow redraw! below
  endtry
  redraw!
  if v:shell_error == 0 && !empty(output)
    exec a:vim_command . ' ' . output
  endif
endfunction

    let g:fzf_preview_window = ['up:70%:hidden', 'ctrl-/']
" }}}

" ######## DLANG Stuff {{{
function! DTest()
  let l:fn = substitute(expand('%:r'), '/', '-', 'g') . '.lst'
  call delete(l:fn)
  cexpr system('dmd -cov -unittest -main -run ' . expand('%'))
  if filereadable(l:fn)
     normal gg
     execute '13vsplit' l:fn
     normal gg
     set scrollbind
     normal l
     set scrollbind
  endif
endfunction

" autocmd FileType d nnoremap [19;2~ :call DTest()<cr>
" autocmd FileType d nnoremap <f8> :cexpr system('rdmd -unittest -main ' . expand('%'))<cr>
" autocmd FileType d set efm=%*[^@]@%f\(%l\):\ %m,%f\(%l\\,%c\):\ %m,%f\(%l\):\ %m

let g:dutyl_stdImportPaths=['/usr/local/include/dlang/dmd']
call dutyl#register#tool('dcd-client', ['dcd-client', '--tcp', '--port', '9166'])
call dutyl#register#tool('dcd-server', ['dcd-server', '--tcp', '--port', '9166'])

let g:tagbar_type_d = {
            \ 'ctagstype' : 'd',
            \ 'kinds'     : [
            \ 'c:classes:1:1',
            \ 'f:functions:1:1',
            \ 'T:template:1:1',
            \ 'g:enums:1:1',
            \ 'e:enumerators:0:0',
            \ 'u:unions:1:1',
            \ 's:structs:1:1',
            \ 'v:variables:1:0',
            \ 'i:interfaces:1:1',
            \ 'm:members',
            \ 'a:alias'
            \ ],
            \'sro': '.',
            \ 'kind2scope' : {
            \ 'c' : 'class',
            \ 'g' : 'enum',
            \ 's' : 'struct',
            \ 'u' : 'union',
            \ 'T' : 'template'
            \},
            \ 'scope2kind' : {
            \ 'enum'      : 'g',
            \ 'class'     : 'c',
            \ 'struct'    : 's',
            \ 'union'     : 'u',
            \ 'template'  : 'T'
            \ },
            \ 'ctagsbin' : 'dscanner',
            \ 'ctagsargs' : ['--ctags']
            \ }

" }}}

" ######## Brute force find {{{
function! FindFunction(name)
 cexpr! system('ag --vimgrep -G ".(cs\|c\|cpp\|d\|h\|js\|java)$" "[A-Za-z\*]+\s+([A-Za-z_]+::)?' . a:name . '\s*\([^\)]*\)(\s+[a-z]+)*\s*(?=\{)"')
endfunction

function! FindClass(name)
 cexpr! system('ag --vimgrep -G ".(cs\|c\|cpp\|d\|h\|js\|java)$" "(class\|struct\|interface\|namespace)\s+([A-Za-z_]+\s+)*' . a:name . '\s+(?!;)"')
endfunction

function! FindDefine(name)
 cexpr! system('ag --vimgrep -G ".(c\|cpp\|h)$" "define\s+' . a:name . '(\s\|\()"')
endfunction

nmap <leader>af "zyiw:call FindFunction(@z)<cr>
nmap <leader>ac "zyiw:call FindClass(@z)<cr>
nmap <leader>ad "zyiw:call FindDefine(@z)<cr>

" }}}

" ######## Plugin settings {{{

" Startify options
let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1

let NERDTreeIgnore=['cmake-*', 'build', 'builds']

function! StartifyEntryFormat()
    return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:alternateNoDefaultAlternate = 1
let g:alternateRelativeFiles = 1

let g:clang_format#auto_format = 0

function! MyFiletype()
  return (strlen(&filetype) ? WebDevIconsGetFileTypeSymbol() : 'no ft')
endfunction

function! MyFileformat()
  return WebDevIconsGetFileFormatSymbol()
endfunction

autocmd FileType cmake setlocal commentstring=#\ %s

let g:CheatDoNotReplaceKeywordPrg=1
let g:CheatSheetShowCommentsByDefault=1

lua << EOF
require('telescope').setup {
  defaults = {
    layout_defaults = {
      vertical = {
        width_padding = 0.05,
        height_padding = 1,
        preview_height = 0.7,
      },
    },
    preview_cutoff = 80,
    results_height = 60,
    layout_strategy = "vertical",
  }
}
EOF

set noshowmode
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \ 'left': [ [ 'mode', 'paste' ],
      \           [ 'readonly', 'relativepath', 'modified' ], ['cocstatus'], [ 'gitbranch' ] ],
      \ 'right': [ [ 'lineinfo' ],
      \            [ 'percent' ],
      \            [ 'fileformat', 'fileencoding', 'filetype' ] ]
      \ },
      \ 'component_function': {
      \ 'gitbranch': 'fugitive#head',
      \ 'filetype': 'MyFiletype',
      \ 'cocstatus': 'coc#status',
      \ 'fileformat': 'MyFileformat'
      \ },
      \ }

autocmd Syntax * call SyntaxRange#Include('R"gl(', ')gl"', 'glsl')
autocmd Syntax * call SyntaxRange#Include('R"lua(', ')lua"', 'lua')
autocmd Syntax * call SyntaxRange#Include('R"md(', ')md"', 'markdown')


let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_cpp_clang_maker = {'exe': 'clang'}
let g:neomake_cpp_clang_args = ['-std=c++14', '-Wall', '-Wextra', '-Weverything', '-pedantic']

let vim_markdown_preview_github = 1
let g:vim_markdown_folding_disabled = 1

" augroup vimtodolists_auto_commands2
"     autocmd!
"     autocmd BufRead,BufNewFile TODO call VimTodoListsInit()
" augroup end

" autocmd FileType java setlocal omnifunc=javacomplete#Complete

if !exists('g:vscode')

let g:ycm_auto_trigger = 1
let g:ycm_rust_src_path = '/home/sasq/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src'

let g:ale_linters = {'cpp': [ 'cc', 'clangd', 'clangtidy' ], 'c' : ['cc']}
let g:ale_sign_warning = '⚠'
let g:ale_sign_error = '❌'
let g:ale_sign_highlight_linenrs  = 1
" let g:ale_virtualtext_cursor = 1
if has('macunix')
    let g:ale_cpp_clangtidy_executable = '/usr/local/Cellar/llvm/7.0.1/bin/clang-tidy'
    "let g:ycm_clangd_binary_path = '/Users/jonasm/sdk/clang+llvm-8.0.0-x86_64-apple-darwin/bin/clangd'
else
    let g:ale_cpp_clangtidy_executable = 'clang-tidy'
    "let g:ycm_clangd_binary_path = '/opt/clang+llvm-8.0.0-x86_64-linux-gnu-ubuntu-18.04/bin/clangd'
endif

" let g:ale_c_build_dir_names = [ 'build', 'builds/debug', 'bin' ]
" let g:ale_linters = {
" \   'cpp': ['clangtidy' ]
" \}
" if has('macunix')
"   let g:ale_cpp_clangtidy_executable = '/home/sasq/clangtidy.py'
" else
"   let g:ale_cpp_clangtidy_executable = 'clang-tidy'
" endif

" if has('macunix')
"     let g:ale_cpp_clang_executable = '/usr/local/opt/llvm/bin/clang++'
" else
" endif
" let g:ale_cpp_clangtidy_checks = [
"             \ '*',
"             \ '-*braces-around-statements',
"             \ '-cert-err58-cpp',
"             \ '-cppcoreguidelines-pro-type-union-access',
"             \ '-fuchsia-*'
" \]

endif

let wiki = {}
let wiki.path = '~/Dropbox/conf/vimwiki/'
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp'}
let g:vimwiki_list = [wiki]

" let g:ycm_global_ycm_extra_conf = '~/.vim/ycm_extra_conf.py'

let g:dash_map = {
        \ 'd' : ['d', 'gl4', 'sod']
        \ }

let g:CommandTMaxFiles = 500000
" let g:CommandTFileScanner = 'find'
"

" let g:switch_custom_definitions =
"             \ [
"             \ [ 'emplace_back', 'push_back' ],
"             \ [ 'width', 'height' ],
"             \ [ 'lock', 'unlock' ],
"             \ ]

let g:switch_custom_definitions = [
    \ [ 'true', 'false' ],
    \ [ 'emplace_back', 'push_back' ],
    \ [ 'width', 'height' ],
    \ [ 'lock', 'unlock' ],
    \ {
    \     '\[^A-Za-z_>]\zs(\([a-zA-Z_\*]\+\))': 'static_cast<\1>',
    \     '\<[a-z0-9]\+_\k\+\>': {
    \       '_\(.\)': '\U\1'
    \     },
    \     '\<[a-z0-9]\+[A-Z]\k\+\>': {
    \       '\([A-Z]\)': '_\l\1'
    \     },
    \ }
    \ ]

"\     '[^A-Za-z_>]\zs(\([a-zA-Z_\*]\+\))': 'static_cast<\1>',
" }}}

" ######## Keyboard mappings {{{

nnoremap <leader>h :SidewaysLeft<cr>
nnoremap <leader>l :SidewaysRight<cr>

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

nnoremap <c-n> :NERDTreeToggle<cr>

" CTRL + Direction to change split
nnoremap <C-Right> <c-w>l
nnoremap <C-Left> <c-w>h
nnoremap <C-Up> <c-w>k
nnoremap <C-Down> <c-w>j

tnoremap <C-Right> <c-\><c-n><c-w>l
tnoremap <C-Left> <c-\><c-n><c-w>h
tnoremap <C-Up> <c-\><c-n><c-w>k
tnoremap <C-Down> <c-\><c-n><c-w>j

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
":nmap <space> <c-d>
:nmap <backspace> <c-u>

" Switch cpp/h - SHIFT also searches for word under cursor
nnoremap <F3> :A<cr>
nnoremap <F15> "zyiw:A<cr>/z<cr>

" Kill Buffer
map <F4> :bp\|bd #<CR>
imap <F4> <C-O>:bw<CR>

" Build project
map <F7> :wa\|make<CR>
imap <F7> <Esc>:wa\|make<CR>

" Run project
map [15;2~ :execute "!" . b:run_command<cr>
"map <f5> :execute "!" . b:run_command . " > output.log &"<cr>
nnoremap <F5> :make run<CR>

" Next / Prev quickfix
map <F6> :cn<CR>
imap <F6>  <C-O>:cn<CR>
map <F18> :cpCR>
imap <F18>  <C-O>:cp<CR>

augroup key_colors
	au!
	autocmd InsertEnter * exe "call system('g815-led -p /home/sasq/insert &')"
	autocmd InsertLeave * exe "call system('g815-led -p /home/sasq/normal &')"
augroup END

" Colorschemes
nnoremap <leader>1 :colorscheme dracula<cr>
nnoremap <leader>2 :set background=light<cr>:colorscheme one<cr>
nnoremap <leader>3 :set background=dark<cr>:colorscheme monokai<cr>
nnoremap <leader>4 :set background=light<cr>:colorscheme vs<cr>
nnoremap <leader>5 :set background=dark<cr>:colorscheme xoria256<cr>
nnoremap <leader>6 :set background=light<cr>:colorscheme github<cr>
nnoremap <leader>7 :set background=dark<cr>:colorscheme frign<cr>
nnoremap <leader>8 :set background=dark<cr>:colorscheme spacecamp<cr>
nnoremap <leader>9 :set background=light<cr>:colorscheme gruvbox<cr>

set updatetime=300
au CursorHold * sil call CocActionAsync('highlight')
" au CursorHoldI * sil call CocActionAsync('showSignatureHelp')

nmap <leader><Right> :call CocLocations('ccls','$ccls/navigate',{'direction':'R'})<cr>
nmap <leader><Down> :call CocLocations('ccls','$ccls/navigate',{'direction':'D'})<cr>
nmap <leader><Up> :call CocLocations('ccls','$ccls/navigate',{'direction':'U'})<cr>
nmap <leader><Left> :call CocLocations('ccls','$ccls/navigate',{'direction':'L'})<cr>

augroup semantic
    autocmd!
    autocmd FileType c,cpp nmap <space> :call CocLocations('ccls','$ccls/navigate',{'direction':'R'})<cr>
    autocmd FileType c,cpp nmap <backspace> :call CocLocations('ccls','$ccls/navigate',{'direction':'L'})<cr>
augroup END


autocmd FileType c,cpp Docset cpp,GL4

    let g:zv_file_types = {
	\   '\v^(cpp|hpp|c|h)$'  : 'cpp,GL4',
	\ }

inoremap <F8> <C-O>:ClangFormat<cr>
nnoremap <F8> :ClangFormat<cr>
vnoremap <F8> :ClangFormat<cr>

" Save file
" imap <F9> <Esc>:w<cr>
" nmap <F9> :w<cr>
imap <c-s> <Esc>:w<cr>
nmap <c-s> :w<cr>

" Look for symbol under cursor

" Remap go-to-tag in cpp mode
" autocmd FileType c,cpp map <buffer> <c-]> :YcmCompleter GoTo<CR>
autocmd FileType c,cpp,objc map <buffer> = <Plug>(operator-clang-format)


if !exists('g:vscode')
nmap <leader>cd  <plug>(coc-definition)
nmap <F12> <plug>(coc-definition)
nmap <leader>cD  <plug>(coc-declaration)
nmap <leader>ci  <plug>(coc-implementation)
nmap <leader>cr  <plug>(coc-references)
nmap <F24> <plug>(coc-references)
nmap <leader>ct  <plug>(coc-type-definition)
nmap <leader>cR  <plug>(coc-rename)
nmap <F2> <plug>(coc-rename)
nmap <leader>cs  :CocFzfList symbols<CR>

nmap <leader>f  <plug>(coc-fix-current)

function! RefRename()
    let sym = expand("<cword>")
    let msg = input("Rename to:", sym)
    execute 'YcmCompleter RefactorRename ' . msg
endfunction

autocmd filetype java  nnoremap <buffer> <leader>f :YcmCompleter FixIt<CR>
autocmd filetype java  nnoremap <buffer> <F12> :YcmCompleter GoTo<CR>
autocmd filetype java  nnoremap <buffer> <F24> :YcmCompleter GoToReferences<CR>
autocmd filetype java  nnoremap <buffer> <F2> :call RefRename()<CR>
autocmd filetype c,cpp inoremap <silent><expr> <c-space> coc#refresh()

"autocmd FileType d nnoremap <F12> :DUjump<CR>

nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction
endif

" Open files with `fzf`
nnoremap <c-q> :GitFiles<CR>
nnoremap <c-p> :Telescope find_files<cr>
nnoremap <c-g> :Telescope live_grep<cr>
nnoremap <c-h> :Telescope old_files<cr>

" nnoremap <c-f> :PickerEdit<CR>
" nnoremap <c-b> :PickerBuffer<CR>
nnoremap <c-b> :Buffers<cr>

nnoremap  :ed %%/

nnoremap <leader>bd :set background=dark<cr>
nnoremap <leader>bl :set background=light<cr>

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

