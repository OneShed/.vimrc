set nocompatible  " no 'vi' compatibility
set nobackup " disable file backups
set modeline      " recognize modeline in files
set fileformats=unix,dos  " force LF-only
 
set textwidth=78

" enhanced backspace
set backspace=indent,eol,start
 
" incremental highlighted search
set incsearch
set hlsearch
 
" highlight matching parenthenesses
set showmatch
 
" perl settings
autocmd FileType perl setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78
" groovy settings
autocmd FileType groovy setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78
" python settings
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78

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

if &diff
    colorscheme evening
    syntax off
endif

set foldmethod=marker
set guifont=Lucida_Sans_Typewriter:h10:cANSI
set guifont=Terminus:h12:cANSI

execute pathogen#infect()

" taglist on F5
runtime plugin/taglist.vim
let Tlist_Exit_OnlyWindow = 1 " close when taglist is last
let Tlist_File_Fold_Auto_Close = 1  "close fold for inactive buffers
let Tlist_GainFocus_On_ToggleOpen = 1 " switch automatically to taglist
  
autocmd FileType sh setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78
autocmd FileType php  setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 showmatch foldmethod=marker textwidth=78  html no indent 
autocmd FileType html setlocal tabstop=4 shiftwidth=4 expandtab softtabstop=4 noautoindent nosi nocin inde=
autocmd FileType html setlocal tabstop=2 shiftwidth=2 expandtab softtabstop=2 foldmethod=marker tw=0

 " taglist on F4 with some extra options
 runtime plugin/taglist.vim
 let Tlist_Exit_OnlyWindow = 1 " close when taglist is last
 let Tlist_File_Fold_Auto_Close = 1  "close fold for inactive buffers
 let Tlist_GainFocus_On_ToggleOpen = 1 " switch automatically to taglist

nnoremap <silent> <F3> :15sp<CR>
nnoremap <F7> <Esc>:w<CR>:! %<CR>
nnoremap <F6> <Esc>:w<CR>:! perl -c %<CR>

" Taglist
let Tlist_Use_Right_Window   = 1
nnoremap <F8> :TlistToggle<CR>

" NERDTree
" map <leader>r :NERDTreeFind<cr>
" NERD Tree
" <SILENt> <special> <F4> :NERDTreeToggle<RETURN>
nnoremap <F4> :NERDTreeToggle<CR>

" simple xml formatter
nnoremap <F9> <Esc>:%s/\(<\/[^>]*>\)/\1\r/g <CR>

" a nicer one
nnoremap <F10> <Esc>:silent %!xmllint --encode UTF-8 --format - <CR>

set nojoinspaces
set number
"
" syntaxhiglight and indentation based on filetype
filetype indent plugin on

" hack for missing auto line break when set paste is on
command Paste execute 'set noai | insert | set ai'
set ruler

