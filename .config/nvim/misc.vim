set nocompatible
"set clipboard=exclude:.*
" Re-read files whenever they change
"  Automatically re-read unchanged files.
set autoread
set mouse=a

set ttyfast
set wrap
"" Enable folding
"set fen
set laststatus=2
" Turn on line numbers
set nu
" 4 spaces for each indentation:
set sts=2
set sw=2
set ts=2
set et

"Set foldmethod to manual.
" Note: Without this set to manual, autocomplete is painfully slow sometimes (maybe
"   because included files are re-folded?).
" c.f. http://stackoverflow.com/questions/2169645/vims-autocomplete-is-excruciatingly-slow
"set fdm=manual

" Disable x11 clipboard
"let g:display_num = ""
" set clipboard=exclude:.*

" Smart indent
set si

" 256 colors
set t_Co=256

" 0 height splits:
"set wmh=2

"" Highlight search
set hlsearch
"" Turn on autoindent
" set ai
set cinoptions=:0,l1,t0,g0
set cpt=.,w,b,t,],s,


" Use filetypes
filetype on
filetype indent on
filetype plugin on

" Status line
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P
" CTAGS
"set tags=tags,.tags

" Colors
syntax on
"colorscheme desert256
"colorscheme gardener
"set background=dark
"set makeprg=make

" Indent HTML automatically
let g:html_indent_tags = '1'

//vmap <C-c> y:call system("pbcopy", getreg("\""))<CR>

set clipboard+=unnamedplus
vmap <C-c> y<CR>
nmap <C-v> :call setreg("\"",system("pbpaste"))<CR>p

"let g:xml_syntax_folding=1

set nobackup
set nowritebackup
set backupdir=~/.vim.backup
set directory=~/.vim.backup
set backupskip=/tmp/*,/private/tmp/*
