# If not running interactively, don't do anything
[ -z "$PS1" ] && return


source ~/.bash/aliases
source ~/.bash/completions
source ~/.bash/paths
source ~/.bash/configs

if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi

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

export PATH="/Users/nathan/.cargo/bin:$PATH"

export PATH="/Users/nathan/Library/Python/3.7/bin:$PATH"

# first in PATH is bundler's bin folder
export PATH=,:"${PATH}"
