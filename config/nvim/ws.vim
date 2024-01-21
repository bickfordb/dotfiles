
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,css,clojure,coffee,cpp,groovy,html,less,java,javascript,mkd,objc,objcpp,php,ruby,make,vim,sls,terraform,yaml,sh autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()


autocmd FileType python autocmd BufWritePre <buffer> :call CocCommand ruff.executeOrganizeImports



