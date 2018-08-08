# If not running interactively, don't do anything
[ -z "$PS1" ] && return


source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/configs

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

# first in PATH is bundler's bin folder
export PATH=,:"${PATH}"

export PATH="$HOME/code/sdk/platform-tools:$PATH"

# {{{
# Node Completion - Auto-generated, do not touch.
shopt -s progcomp

[ -d ~/.node-completion ] && for f in $(command ls ~/.node-completion); do
  f="$HOME/.node-completion/$f"
  test -f "$f" && . "$f"
done
# }}}

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[ -s "/Users/nathan-uken/.dnx/dnvm/dnvm.sh" ] && . "/Users/nathan-uken/.dnx/dnvm/dnvm.sh" # Load dnvm

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

export PATH="/Users/nathan/.cargo/bin:$PATH"
