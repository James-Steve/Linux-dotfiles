
"let g:indentLine_char_list = ['|', '¦', '┆', '┊']
let g:indentLine_char = '┆'
let g:indentLine_first_char = '┆' 
let g:indentLine_enabled = 1
let g:indentLine_showFirstIndentLevel =0
lua << EOF
require("indent_blankline").setup {
    char = "┆",
    buftype_exclude = {"terminal"}
}
EOF
