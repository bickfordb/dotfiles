
" Prerequisites:
" - neovim >= 0.5
" - rust-analyzer: https://rust-analyzer.github.io/manual.html#rust-analyzer-language-server-binary

" Steps:
" - :PlugInstall
" - Restart





" Set completeopt to have a better completion experience
set completeopt=menu,menuone,noselect

" Avoid showing extra messages when using completion
set shortmess+=c


" Configure lsp
" https://github.com/neovim/nvim-lspconfig#rust_analyzer
" lua <<EOF
" -- nvim_lsp object
" local nvim_lsp = require'lspconfig'
" 
" local opts = {
"     tools = {
"         autoSetHints = true,
"         hover_with_actions = true,
"         runnables = {
"             use_telescope = true
"         },
"         inlay_hints = {
"             show_parameter_hints = false,
"             parameter_hints_prefix = "",
"             other_hints_prefix = "",
"         },
"     },
" 
"     -- all the opts to send to nvim-lspconfig
"     -- these override the defaults set by rust-tools.nvim
"     -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
"     server = {
" 	    settings = {
" 		["rust-analyzer"] = {
" 			procMacro = {
" 				enable = true
" 			}
" 		}
" 	    }
"     }, -- rust-analyer options
" }
" 
" nvim_lsp.gopls.setup {
"     cmd = {"gopls", "serve"},
"     settings = {
"       gopls = {
"         analyses = {
"           unusedparams = true,
"         },
"         staticcheck = true,
"       },
"     },
" }
" 
" require('rust-tools').setup(opts)
" EOF
" 

