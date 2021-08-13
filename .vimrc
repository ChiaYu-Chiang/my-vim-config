set encoding=utf8
set fileencodings=utf8

set ai
set background=dark
" set backspace=indent,eol
set cindent
set cursorcolumn
set cursorline
set cursorlineopt=line
set expandtab
set hlsearch
set laststatus=2
set nu
set shiftwidth=4
set tabstop=4
set wrap

filetype indent on
syntax enable

hi cursorcolumn cterm=none ctermbg=238
hi cursorline cterm=none ctermbg=238

" Automatic-Brace-Completion
inoremap ( ()<Esc>i
" inoremap {<CR> {<CR>}<Esc>ko
inoremap { {}<ESC>i
inoremap [ []<Esc>i
inoremap < <><Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ) <C-R>=ClosePair(')')<CR>
inoremap } <C-R>=ClosePair('}')<CR>
inoremap ] <C-R>=ClosePair(']')<CR>
inoremap > <C-R>=ClosePair('>')<CR>
inoremap " <C-R>=QuoteDelim('"')<CR>
inoremap ' <C-R>=QuoteDelim("'")<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        " Inserting a quoted quotation mark into the string
        return a:char
    elseif line[col - 1] == a:char
        " Escaping out of the string
        return "\<Right>"
    else
        " Starting a string
        return a:char.a:char."\<Esc>i"
    endif
endf

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
call plug#begin('~/.vim/plugged')

Plug 'ycm-core/YouCompleteMe'

Plug 'mg979/vim-visual-multi', {'branch': 'master'}

Plug 'frazrepo/vim-rainbow'

Plug 'mhinz/vim-startify'

call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow
" enable it globally
let g:rainbow_active = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" startify
" add to bookmark {'shortcut key', 'file'}
let g:startify_bookmarks = [
            \ {'c' : '~/.vimrc'},
            \ ]

" setup with header
"'let g:startify_custom_header = [   
"            \ '__      __ _              ___    __',
"            \ '\ \    / /(_)            / _ \  /_ |',
"            \ ' \ \  / /  _  _ __ ___  | (_) |  | |',
"            \ '  \ \/ /  | || ''_ ` _ \  > _ <   | |',
"            \ '   \  /   | || | | | | || (_) |_ | |',
"            \ '    \/    |_||_| |_| |_| \___/(_)|_|',
"            \ '',
"            \ '',
"            \ ]

let g:startify_custom_header = [
            \ 'quu..__',
            \ ' $$$b  `---.__',
            \ '  "$$b        `--.                          ___.---uuudP',
            \ '   `$$b           `.__.------.__     __.---''      $$$$"              .',
            \ '     "$b          -''            `-.-''            $$$"              .''|',
            \ '       ".                                       d$"             _.''  |',
            \ '         `.   /                              ..."             .''     |',
            \ '           `./                           ..::-''            _.''       |',
            \ '            /                         .:::-''            .-''         .''',
            \ '           :                          ::''\          _.''            |',
            \ '          .'' .-.             .-.           `.      .''               |',
            \ '          : /''$$|           .@"$\           `.   .''              _.-''',
            \ '         .''|$u$$|          |$$,$$|           |  <            _.-''',
            \ '         | `:$$:''          :$$$$$:           `.  `.       .-''',
            \ '         :                  `"--''             |    `-.     \',
            \ '        :##.       ==             .###.       `.      `.    `\',
            \ '        |##:                      :###:        |        >     >',
            \ '        |#''     `..''`..''          `###''        x:      /     /',
            \ '         \                                   xXX|     /    ./',
            \ '          \                                xXXX''|    /   ./',
            \ '          /`-.                                  `.  /   /',
            \ '         :    `-  ...........,                   | /  .''',
            \ '         |         ``:::::::''       .            |<    `.',
            \ '         |             ```          |           x| \ `.:``.',
            \ '         |                         .''    /''   xXX|  `:`M`M'':.',
            \ '         |    |                    ;    /:'' xXXX''|  -''MMMMM:''',
            \ '         `.  .''                   :    /:''       |-''MMMM.-''',
            \ '          |  |                   .''   /''        .''MMM.-''',
            \ '          `''`''                   :  ,''          |MMM<',
            \ '            |                     `''            |tbap\',
            \ '             \                                  :MM.-''',
            \ '              \                 |              .''',
            \ '               \.               `.            /',
            \ '                /     .:::::::.. :           /',
            \ '               |     .:::::::::::`.         /',
            \ '               |   .:::------------\       /',
            \ '              /   .''               >::''  /',
            \ '              `'',:                 :    .''',
            \ '                                   `:.:''',
            \ ] 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

