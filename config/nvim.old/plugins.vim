call plug#begin("~/.config/nvim/plugins")
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/kien/rainbow_parentheses.vim'

Plug 'nvim-treesitter/nvim-treesitter'
Plug 'neovim/nvim-lspconfig'
Plug 'ray-x/go.nvim'
Plug 'ray-x/guihua.lua' 

"Plug 'jose-elias-alvarez/null-ls.nvim'
"Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

" Extensions to built-in LSP, for example, providing type inlay hints
Plug 'nvim-lua/lsp_extensions.nvim'

" Autocompletion framework for built-in LSP
"Plug 'nvim-lua/completion-nvim'


" Autocompletion framework for built-in LSP
"Plug 'hrsh7th/nvim-compe'

" Adds extra functionality over rust analyzer
Plug 'simrat39/rust-tools.nvim'

" Snippet engine to handle LSP snippets
"Plug 'hrsh7th/vim-vsnip'

" Optional
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Plug 'fatih/vim-go'
"Plug 'fannheyward/coc-pyright'
"Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"
Plug 'tpope/vim-fugitive'


" Some color scheme other then default
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'https://github.com/hashivim/vim-terraform'

call plug#end()

