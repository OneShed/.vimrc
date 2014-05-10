set nocompatible  " no 'vi' compatibility
set nobackup      " disable file backups
set modeline      " recognize modeline in files
set fileformats=unix,dos  " force LF-only
 
" enhanced backspace
set backspace=indent,eol,start
 
" incremental highlighted search
set incsearch
set hlsearch
 
" highlight matching parenthenesses
set showmatch
 
" perl settings
autocmd FileType perl setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78
colorsche zellner
"   blue
"   darkblue
"   default
"   desert
"   elflord
"   evening
"   koehler
"   morning
"   murphy
"   pablo
"   peachpuff
"   ron
"   shine
"   slate
"   torte
"   zellner

set foldmethod=marker
set guifont=Lucida_Sans_Typewriter:h10:cANSI
set guifont=Terminus:h12:cANSI

" taglist on F5
runtime plugin/taglist.vim
let Tlist_Exit_OnlyWindow = 1 " close when taglist is last
let Tlist_File_Fold_Auto_Close = 1  "close fold for inactive buffers
let Tlist_GainFocus_On_ToggleOpen = 1 " switch automatically to taglist
 
autocmd FileType perl setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78
autocmd FileType php  setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78  html no indent
autocmd FileType html setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 noautoindent nosi nocin inde=
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2 foldmethod=marker tw=0

 " taglist on F4 with some extra options
 runtime plugin/taglist.vim
 let Tlist_Exit_OnlyWindow = 1 " close when taglist is last
 let Tlist_File_Fold_Auto_Close = 1  "close fold for inactive buffers
 let Tlist_GainFocus_On_ToggleOpen = 1 " switch automatically to taglist

nnoremap <silent> <F3> :15sp<CR>
nnoremap <F7> <Esc>:w<CR>:!perl %<CR>
nnoremap <F6> <Esc>:w<CR>:!perl -c %<CR>
nnoremap <F8> :TlistToggle<CR>

set nojoinspaces
set number
"
" syntaxhiglight and indentation based on filetype
filetype indent plugin on
syntax on
