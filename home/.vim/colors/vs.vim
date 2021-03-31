" Vim color file - vs
" Generated by http://bytefluent.com/vivify 2017-03-27
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "vs"

hi Normal guifg=#dbdcdc guibg=#1e1e1e gui=NONE
hi CursorLine guibg=#303030 gui=NONE cterm=NONE
hi Constant guifg=#d69d85
hi Statement guifg=#569cd6
hi Comment guifg=#57a64a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
hi Type guifg=#4ec9ae guibg=NONE guisp=NONE gui=NONE ctermfg=79 ctermbg=NONE cterm=NONE
hi PreProc guifg=#9a9a9a

hi StatusLine guifg=#ffffff guibg=#0C64C0 guisp=#3e3e5e gui=NONE ctermfg=250 ctermbg=60 cterm=NONE
hi StatusLineNC guifg=#b9b9b9 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=250 ctermbg=60 cterm=NONE
hi User4 guifg=#6666ee ctermfg=12
hi User5 guifg=white guibg=#6666ee ctermfg=15 ctermbg=4
hi User6 guifg=white guibg=#0c64c0 ctermfg=15 ctermbg=1

hi link cppSTLnamespace cSTL
hi link cppSTLfunction cSTL
hi link cppSTLtype cSTL
hi link cAnsiFunction cSTL
hi link cppSTLfunctional cSTL
hi link cppSTLiterator cSTL
hi cSTL guifg=#4ec9ae

hi cppExceptions guifg=#d65d65
hi cppSTLexception guifg=#d65d65
hi Identifier guifg=#dbdcdc gui=NONE cterm=NONE ctermfg=NONE term=NONE

hi Todo guibg=#808020

" hi cppSTLconstant guifg=#d69d85
" hi cConstant guifg=#d69d85

" hi cConditional guifg=#569cd6
hi Number guifg=#b6cea8

hi LineNr guifg=#8b8bcd guibg=#2e2e2e guisp=#2e2e2e gui=NONE ctermfg=104 ctermbg=236 cterm=NONE
hi SignColumn guibg=#202020 guifg=#202050
hi NonText guifg=#d65d65 guibg=#303030
hi Label guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE

hi DiffDelete guifg=#ffffcd guibg=#6d3030 guisp=#6d3030 gui=NONE ctermfg=230 ctermbg=95 cterm=NONE
hi DiffChange guifg=#ffffcd guibg=#306b8f guisp=#306b8f gui=NONE ctermfg=230 ctermbg=24 cterm=NONE
hi DiffAdd guifg=#ffffcd guibg=#306d30 guisp=#306d30 gui=NONE ctermfg=230 ctermbg=65 cterm=NONE

hi IncSearch guifg=#000000 guibg=#4e4e8f guisp=#cd8b60 gui=NONE ctermfg=236 ctermbg=173 cterm=NONE
hi Search guifg=#000000 guibg=#4e4e8f guisp=#cd8b60 gui=NONE ctermfg=236 ctermbg=173 cterm=NONE


hi Visual guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE

hi SpellCap guibg=#404020 gui=undercurl term=NONE cterm=underline
hi SpellBad guifg=#ffffff guibg=#602020 gui=undercurl term=NONE cterm=underline
hi Folded guifg=#cfcfcd guibg=#4b208f guisp=#4b208f gui=NONE ctermfg=252 ctermbg=54 cterm=NONE

hi Pmenu guifg=#dcdcdc guibg=#2e2e2e guisp=#2e2e2e gui=NONE ctermfg=104 ctermbg=236 cterm=NONE

hi ColorColumn guibg=#6d2020
hi MatchParen term=reverse ctermbg=6 guibg=#4e4e8f

"hi CTagsImport -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
"hi CursorLine -- no settings --
"hi Union -- no settings --
"hi TabLineFill -- no settings --
"hi VisualNOS -- no settings --
"hi CursorColumn -- no settings --
"hi EnumerationName -- no settings --
"hi SpellCap -- no settings --
"hi SpellLocal -- no settings --
"hi DefinedName -- no settings --
"hi LocalVariable -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi TabLine -- no settings --
"hi clear -- no settings --
"hi default -- no settings --



" hi WildMenu guifg=#eeeeee guibg=#6e6eaf guisp=#6e6eaf gui=NONE ctermfg=255 ctermbg=61 cterm=NONE
" hi SpecialComment guifg=#c080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
" hi Typedef guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Title guifg=#af4f4b guibg=NONE guisp=NONE gui=NONE ctermfg=131 ctermbg=NONE cterm=NONE
" hi Folded guifg=#cfcfcd guibg=#4b208f guisp=#4b208f gui=NONE ctermfg=252 ctermbg=54 cterm=NONE
" hi PreCondit guifg=#409090 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
" hi Include guifg=#409090 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
" hi NonText guifg=#8b8bcd guibg=NONE guisp=NONE gui=NONE ctermfg=104 ctermbg=NONE cterm=NONE
" hi DiffText guifg=#ffffcd guibg=#4a2a4a guisp=#4a2a4a gui=NONE ctermfg=230 ctermbg=239 cterm=NONE
" hi ErrorMsg guifg=#ffffff guibg=#ce4e4e guisp=#ce4e4e gui=NONE ctermfg=15 ctermbg=167 cterm=NONE
" hi Debug guifg=#c080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
" hi PMenuSbar guifg=#eeeeee guibg=#6e6eaf guisp=#6e6eaf gui=NONE ctermfg=255 ctermbg=61 cterm=NONE
" hi Identifier guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi SpecialChar guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
" hi Conditional guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi StorageClass guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Todo guifg=#303030 guibg=#d0a060 guisp=#d0a060 gui=NONE ctermfg=236 ctermbg=179 cterm=NONE
" hi Special guifg=#f5916a guibg=NONE guisp=NONE gui=NONE ctermfg=209 ctermbg=NONE cterm=NONE
" hi PMenuSel guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
" hi Delimiter guifg=#c080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
" hi Statement guifg=#569cd6 guibg=NONE guisp=NONE gui=NONE ctermfg=74 ctermbg=NONE cterm=NONE
" hi Comment guifg=#57a64a guibg=NONE guisp=NONE gui=NONE ctermfg=71 ctermbg=NONE cterm=NONE
" hi Character guifg=#ffcd8b guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi Float guifg=#b6cea8 guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE
" hi Number guifg=#b6cea8 guibg=NONE guisp=NONE gui=NONE ctermfg=151 ctermbg=NONE cterm=NONE

" hi Boolean guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
" hi Operator guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Question guifg=#ffcd00 guibg=NONE guisp=NONE gui=NONE ctermfg=220 ctermbg=NONE cterm=NONE
" hi WarningMsg guifg=#ffffff guibg=#ce8e4e guisp=#ce8e4e gui=NONE ctermfg=15 ctermbg=173 cterm=NONE
" hi ModeMsg guifg=#7e7eae guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
" hi Define guifg=#409090 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
" hi Function guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi FoldColumn guifg=#8b8bcd guibg=#2e2e2e guisp=#2e2e2e gui=NONE ctermfg=104 ctermbg=236 cterm=NONE
" hi PreProc guifg=#409090 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
" hi MoreMsg guifg=#7e7eae guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
" hi VertSplit guifg=#b9b9b9 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=250 ctermbg=60 cterm=NONE
" hi Exception guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Keyword guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Cursor guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=NONE ctermfg=238 ctermbg=105 cterm=NONE
" hi Error guifg=#ffffff guibg=#6e2e2e guisp=#6e2e2e gui=NONE ctermfg=15 ctermbg=95 cterm=NONE
" hi PMenu guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
" hi SpecialKey guifg=#ab60ed guibg=NONE guisp=NONE gui=NONE ctermfg=135 ctermbg=NONE cterm=NONE
" hi Constant guifg=#ffcd8b guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi Tag guifg=#c080d0 guibg=NONE guisp=NONE gui=NONE ctermfg=176 ctermbg=NONE cterm=NONE
" hi String guifg=#d69d85 guibg=#080808 guisp=#080808 gui=NONE ctermfg=180 ctermbg=232 cterm=NONE
" hi PMenuThumb guifg=#eeeeee guibg=#6e6eaf guisp=#6e6eaf gui=NONE ctermfg=255 ctermbg=61 cterm=NONE
" hi MatchParen guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=238 ctermbg=120 cterm=NONE
" hi Repeat guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Directory guifg=#00ff8b guibg=NONE guisp=NONE gui=NONE ctermfg=48 ctermbg=NONE cterm=NONE
" hi Structure guifg=#ff8bff guibg=NONE guisp=NONE gui=NONE ctermfg=213 ctermbg=NONE cterm=NONE
" hi Macro guifg=#bd63c5 guibg=NONE guisp=NONE gui=NONE ctermfg=170 ctermbg=NONE cterm=NONE
" hi Underlined guifg=#df9f2d guibg=NONE guisp=NONE gui=NONE ctermfg=172 ctermbg=NONE cterm=NONE
" hi cursorim guifg=#404040 guibg=#8b8bff guisp=#8b8bff gui=NONE ctermfg=238 ctermbg=105 cterm=NONE
" hi mbenormal guifg=#cfbfad guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=187 ctermbg=237 cterm=NONE
" hi perlspecialstring guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
" hi doxygenspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi mbechanged guifg=#eeeeee guibg=#2e2e3f guisp=#2e2e3f gui=NONE ctermfg=255 ctermbg=237 cterm=NONE
" hi mbevisiblechanged guifg=#eeeeee guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=255 ctermbg=60 cterm=NONE
" hi doxygenparam guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi doxygensmallspecial guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi doxygenprev guifg=#fdd090 guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi perlspecialmatch guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
" hi cformat guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
" hi lcursor guifg=#404040 guibg=#8fff8b guisp=#8fff8b gui=NONE ctermfg=238 ctermbg=120 cterm=NONE
" hi doxygenspecialmultilinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
" hi taglisttagname guifg=#808bed guibg=NONE guisp=NONE gui=NONE ctermfg=105 ctermbg=NONE cterm=NONE
" hi doxygenbrief guifg=#fdab60 guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
" hi mbevisiblenormal guifg=#cfcfcd guibg=#4e4e8f guisp=#4e4e8f gui=NONE ctermfg=252 ctermbg=60 cterm=NONE
" hi user2 guifg=#7070a0 guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=103 ctermbg=60 cterm=NONE
" hi user1 guifg=#00ff8b guibg=#3e3e5e guisp=#3e3e5e gui=NONE ctermfg=48 ctermbg=60 cterm=NONE
" hi doxygenspecialonelinedesc guifg=#ad600b guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
" hi doxygencomment guifg=#ad7b20 guibg=NONE guisp=NONE gui=NONE ctermfg=130 ctermbg=NONE cterm=NONE
" hi cspecialcharacter guifg=#c080d0 guibg=#404040 guisp=#404040 gui=NONE ctermfg=176 ctermbg=238 cterm=NONE
" hi pythonimport guifg=#1c9191 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
" hi pythonexception guifg=#f030f0 guibg=NONE guisp=NONE gui=NONE ctermfg=13 ctermbg=NONE cterm=NONE
" hi pythonbuiltinfunction guifg=#1c9191 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
" hi pythonoperator guifg=#a3a3a4 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
" hi pythonexclass guifg=#1c9191 guibg=NONE guisp=NONE gui=NONE ctermfg=30 ctermbg=NONE cterm=NONE
" hi pythonbuiltin guifg=#839496 guibg=NONE guisp=NONE gui=NONE ctermfg=66 ctermbg=NONE cterm=NONE
" hi phpstringdouble guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
" hi htmltagname guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
" hi javascriptstrings guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
" hi htmlstring guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
" hi phpstringsingle guifg=#e2e4e5 guibg=NONE guisp=NONE gui=NONE ctermfg=254 ctermbg=NONE cterm=NONE
" hi stringdelimiter guifg=#556633 guibg=NONE guisp=NONE gui=NONE ctermfg=101 ctermbg=NONE cterm=NONE
" hi rubyregexp guifg=#dd0093 guibg=NONE guisp=NONE gui=NONE ctermfg=162 ctermbg=NONE cterm=NONE
" hi string guifg=#99ad6a guibg=NONE guisp=NONE gui=NONE ctermfg=107 ctermbg=NONE cterm=NONE
" hi constant guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
" hi normal guifg=#e8e8d3 guibg=#151515 guisp=#151515 gui=NONE ctermfg=187 ctermbg=233 cterm=NONE
" hi rubyinstancevariable guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
" hi rubyclass guifg=#447799 guibg=NONE guisp=NONE gui=NONE ctermfg=67 ctermbg=NONE cterm=NONE
" hi identifier guifg=#c6b6ee guibg=NONE guisp=NONE gui=NONE ctermfg=183 ctermbg=NONE cterm=NONE
" hi comment guifg=#888888 guibg=NONE guisp=NONE gui=italic ctermfg=102 ctermbg=NONE cterm=NONE
" hi rubyregexpdelimiter guifg=#540063 guibg=NONE guisp=NONE gui=NONE ctermfg=53 ctermbg=NONE cterm=NONE
" hi rubyregexpspecial guifg=#a40073 guibg=NONE guisp=NONE gui=NONE ctermfg=126 ctermbg=NONE cterm=NONE
" hi rubypredefinedidentifier guifg=#de5577 guibg=NONE guisp=NONE gui=NONE ctermfg=168 ctermbg=NONE cterm=NONE
" hi function guifg=#fad07a guibg=NONE guisp=NONE gui=NONE ctermfg=222 ctermbg=NONE cterm=NONE
" hi directory guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
" hi rubysymbol guifg=#7697d6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
" hi rubycontrol guifg=#7597c6 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE
" hi rubyidentifier guifg=#c6b6fe guibg=NONE guisp=NONE gui=NONE ctermfg=147 ctermbg=NONE cterm=NONE
" hi condtional guifg=#8fffff guibg=NONE guisp=NONE gui=NONE ctermfg=123 ctermbg=NONE cterm=NONE
" hi htmlitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic ctermfg=252 ctermbg=234 cterm=NONE
" hi htmlboldunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic,underline ctermfg=252 ctermbg=234 cterm=bold,underline
" hi htmlbolditalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,italic ctermfg=252 ctermbg=234 cterm=bold
" hi htmlunderlineitalic guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=italic,underline ctermfg=252 ctermbg=234 cterm=underline
" hi htmlbold guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold ctermfg=252 ctermbg=234 cterm=bold
" hi htmlboldunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=bold,underline ctermfg=252 ctermbg=234 cterm=bold,underline
" hi htmlunderline guifg=#D0D0D0 guibg=#1F1F1F guisp=#1F1F1F gui=underline ctermfg=252 ctermbg=234 cterm=underline
" hi underline guifg=#eeddff guibg=NONE guisp=NONE gui=NONE ctermfg=189 ctermbg=NONE cterm=NONE
"hi gutter guifg=#4e0c4e guibg=#be26be guisp=#be26be gui=NONE ctermfg=53 ctermbg=5 cterm=NONE

