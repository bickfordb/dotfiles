function Comment()
  :s/^/\/\//
endfun

function UnComment()
  :s/^\/\///
endfun

vmap <silent> <S-K> :call Comment() <CR>
nmap <silent> <S-K> :call Comment() <CR>
vmap <silent> <S-L> :call UnComment() <CR>
nmap <silent> <S-L> :call UnComment() <CR>
