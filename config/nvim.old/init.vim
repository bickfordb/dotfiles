"set runtimepath^=~/.vim runtimepath+=~/.vim/after
"let &packpath = &runtimepath
"source ~/.vimrc
runtime plugins.vim
runtime filetypes.vim
let mapleader=","
let maplocalleader="'"

set nu
set ts=4 sts=4 sw=4

set nocompatible
set maxmempattern=10000

"source ~/.config/nvim/plugins.vim


"runtime misc.vim
"runtime filetypes.vim
"runtime clojure.vim
set termguicolors
colorscheme nord

syntax enable
filetype plugin indent on

"runtime rs.vim
"runtime ws.vim
"runtime comment.vim

let c_no_curly_error = 1
map <Leader>q :qa!<CR>
map <Leader>m :make<CR>
"map <Leader>d :sp<CR> :lua vim.lsp.buf.definition()<CR>
"map <Leader>b :GoBuild<CR>
"map <Leader>d :vert GitDiff<CR>
"map <Leader>t :!make test<CR>
"map <Leader>l :tabprev<CR>
"map <Leader>s :cs find s <cword><CR>

"runtime cscope-bindings.vim


" JSHINT
"let jshint2_save = 1
"let jshint2_read = 1
"let jshint2_close = 1

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"let g:go_highlight_functions = 1
"let g:go_highlight_methods = 1
"let g:go_highlight_structs = 1
"let g:go_highlight_operators = 1
"let g:go_highlight_build_constraints = 1
set noswapfile
set nobackup
"let g:neocomplete#enable_at_startup = 1
" autocmd BufWritePost *.py call Flake8()
set diffopt+=vertical

" Automatically format Rust modules on save
"let g:rustfmt_autosave = 1
"set statusline+=%#warningmsg#
"set statusline+=%*
let g:airline_powerline_fonts = 1
set clipboard+=unnamedplus


"runtime coc.vim
