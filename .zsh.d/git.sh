if [[ "${SHELL}" != "/bin/zsh" ]]; then
  case $TERM in
      rxvt-unicode )
          export TERM=xterm-color
      ;;
      *)
      ;;
  esac

  case $TERM in
      xterm*|rxvt*|gnome*|eterm* )
      PS1='\[\033[01;35m\][\[\033[01;32m\]\u@\h \[\033[01;34m\]\W$(__git_ps1 " (%s)")\[\033[00m\]\[\033[01;35m\]]\$\[\033[0m\] '
      ;;
      dumb|* )
      PS1='[\u@\h \W]\$ '
      ;;
  esac
  export PS1
fi

setopt prompt_subst
autoload -U colors && colors # Enable colors in prompt
# Echoes information about Git repository status when inside a Git repository
git_info() {

  # Exit if not inside a Git repository
  ! git rev-parse --is-inside-work-tree > /dev/null 2>&1 && return

  # Git branch/tag, or name-rev if on detached head
  local GIT_LOCATION=${$(git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD)#(refs/heads/|tags/)}

  local -a GIT_INFO
  GIT_INFO+=("")

   echo "%{$fg[white]$bg[blue]%}${GIT_LOCATION}%{$reset_color%}"
}

# Use ❯ as the non-root prompt character; # for root
# Change the prompt character color if the last command had a nonzero exit code
PS1='%n@%m %{$fg[magenta]%}%~%u $(git_info) %(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '

PS1='%{$fg[magenta]%}%~%u $(git_info) %(?.%{$fg[blue]%}.%{$fg[red]%})%(!.#.❯)%{$reset_color%} '
