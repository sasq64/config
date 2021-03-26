
if exists("b:current_syntax")
  finish
endif

let b:current_syntax = "djinni"

syn keyword idlStructure enum flags record interface nextgroup=idlBlock
syn keyword idlType i8 u8 i16 u16 i32 u32 f32 i64 u64 f64 string bool Unit
syn match idlList "list<[^>]\+>" contains=idlType,idlSymbol
syn match idlComment "#.*$"
syn match idlNumber '\d\+'
syn keyword idlPrefix static const

syn match idlEnumLine "\s*\([A-Z_]\+\)\(\s*=\s*[A-Za-z0-9\.]\+\)\?;$"

syn match idlRecordLine "\s*[A-Za-z_]\+:\s*[^;]\+;" contains=idlSymbol,idlType

syn match idlSymbol "[A-Za-z_]\+"

syn match idlFunctionName "[A-Za-z_]\+([^\)\n]*)" contains=idlList,idlType,idlSymbol

syn match idlFunction "\s*\(static\_s\+\)\?\(const\_s\+\)\?[A-Za-z_]\+(\_[^)]*)\(:\_s*[^;]\+\)\?;" contains=idlFunctionName,idlType,idlList,idlPrefix

syn region idlBlock start="{" end="}" fold transparent contains=idlEnumLine,idlComment,idlRecordLine, idlFunction


hi def link idlStructure Structure
hi def link idlNumber Number
hi def link idlEnumLine Number
hi def link idlComment Comment
hi def link idlSymbol Symbol
hi def link idlType Type
hi def link idlList Type
hi def link idlSymbol Identifier
hi def link idlFunctionName Function
hi def link idlPrefix StorageClass
hi def link idlError Error

