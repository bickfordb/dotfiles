au BufRead,BufNewFile *.sass set filetype=css
au BufRead,BufNewFile *.bzl set filetype=python
au BufRead,BufNewFile BUILD set filetype=python
au BufRead,BufNewFile *.BUILD set filetype=python
au BufRead,BufNewFile WORKSPACE set filetype=python
au BufRead,BufNewFile *.ly set filetype=yacc
au BufRead,BufNewFile *.x set filetype=lex
au BufRead,BufNewFile *.i set filetype=swig
au BufRead,BufNewFile *.hsc set filetype=haskell
au BufRead,BufNewFile *.thrift set filetype=thrift
au BufRead,BufNewFile *.mako set filetype=mako
au BufRead,BufNewFile *.md set filetype=mkd
au BufRead,BufNewFile *.go set filetype=go
au BufRead,BufNewFile *.c  set foldmethod=syntax
au BufRead,BufNewFile Gruntfile  set filetype=javascript
au BufRead,BufNewFile *.m  set filetype=objc
au BufRead,BufNewFile *.inc  set filetype=php
au BufRead,BufNewFile *.module  set filetype=php
au BufRead,BufNewFile *.apache.conf set filetype=apache
au BufRead,BufNewFile *.yml  set filetype=yaml
au BufRead,BufNewFile *.wsgi  set filetype=python
au BufRead,BufNewFile *.tac  set filetype=python
au BufRead,BufNewFile *.todo set filetype=todo
au BufRead,BufNewFile TODO set filetype=todo
au BufRead,BufNewFile *.json set filetype=javascript
au BufRead,BufNewFile *.ex set filetype=elixir
au BufRead,BufNewFile *.jsx set filetype=javascript
au BufRead,BufNewFile *.pp set filetype=ruby
au BufRead,BufNewFile Vagrantfile set filetype=ruby
au BufRead,BufNewFile *.clj set filetype=clojure
au BufRead,BufNewFile *.cljs set filetype=clojure
au BufRead,BufNewFile *.mm set filetype=objcpp
au BufRead,BufNewFile *.sls set filetype=yaml
au BufRead,BufNewFile user-data set filetype=yaml
au BufRead,BufNewFile *.manifest set filetype=yaml
au BufRead,BufNewFile *.tera set filetype=html
au BufRead,BufNewFile Dockerfile* set filetype=dockerfile


au FileType javascript setlocal sts=2 ts=2 sw=2
au FileType html set foldmethod=syntax foldlevelstart=1
au FileType css set sts=2 ts=2 sw=2
au FileType c set sts=2 ts=2 sw=2
au FileType make setlocal sts=2 ts=2 sw=2
au FileType mako setlocal sts=2 ts=2 sw=2
au FileType php setlocal sts=2 ts=2 sw=2
au FileType python setlocal sts=4 ts=4 sw=4 et
au FileType objc setlocal sts=2 ts=2 sw=2
au FileType objcpp setlocal sts=2 ts=2 sw=2
au FileType ruby setlocal sts=2 ts=2 sw=2
au FileType scala setlocal sts=2 ts=2 sw=2
au FileType yaml setlocal foldmethod=indent
"au FileType lisp setlocal sts=2 ts=2 sw=2
