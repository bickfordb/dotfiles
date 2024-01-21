source $HOME/.profile

for i in $(ls -1 $HOME/.zsh.d/*.sh|sort -n);
do
  . $i;
done

