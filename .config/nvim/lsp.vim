" Code navigation shortcuts
" as found in :help lsp
" nnoremap <silent> <c-]> <cmd>lua vim.lsp.buf.definition()<CR>
" 
" nnoremap <silent> gD    <cmd>lua vim.lsp.buf.implementation()<CR>
" nnoremap <silent> <c-k> <cmd>lua vim.lsp.buf.signature_help()<CR>
" nnoremap <silent> 1gD   <cmd>lua vim.lsp.buf.type_definition()<CR>
" nnoremap <silent> gr    <cmd>lua vim.lsp.buf.references()<CR>
" nnoremap <silent> g0    <cmd>lua vim.lsp.buf.document_symbol()<CR>
" nnoremap <silent> gW    <cmd>lua vim.lsp.buf.workspace_symbol()<CR>
" " rust-analyzer does not yet support goto declaration
" " re-mapped `gd` to definition
" nnoremap <silent> gd    <cmd>lua vim.lsp.buf.definition()<CR>
" "nnoremap <silent> gd    <cmd>lua vim.lsp.buf.declaration()<CR>
" 
" " Quick-fix
" nnoremap <silent> ga    <cmd>lua vim.lsp.buf.code_action()<CR>
" 
" " Completion
" lua <<EOF
" require'compe'.setup {
"   enabled = true;
"   autocomplete = true;
"   debug = false;
"   min_length = 1;
"   preselect = 'enable';
"   throttle_time = 80;
"   source_timeout = 200;
"   incomplete_delay = 400;
"   max_abbr_width = 100;
"   max_kind_width = 100;
"   max_menu_width = 100;
" 
"   source = {
"     path = true;
"     buffer = true;
"     calc = true;
"     vsnip = true;
"     nvim_lsp = true;
"     nvim_lua = true;
"     spell = true;
"     tags = true;
"     snippets_nvim = true;
"   };
" }
" EOF
" inoremap <silent><expr> <C-Space> compe#complete()
" inoremap <silent><expr> <CR>      compe#confirm('<CR>')
" inoremap <silent><expr> <C-e>     compe#close('<C-e>')
" 
" " Use <Tab> and <S-Tab> to navigate through popup menu
" inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
" 
" " have a fixed column for the diagnostics to appear in
" " this removes the jitter when warnings/errors flow in
" set signcolumn=yes
" 
" " Set updatetime for CursorHold
" " 300ms of no cursor movement to trigger CursorHold
" set updatetime=300
" " Show diagnostic popup on cursor hover
" autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
" 
" " Goto previous/next diagnostic warning/error
" nnoremap <silent> g[ <cmd>lua vim.lsp.diagnostic.goto_prev()<CR>
" nnoremap <silent> g] <cmd>lua vim.lsp.diagnostic.goto_next()<CR>
" 
