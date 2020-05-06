source ~/.antigen.zsh

[ -f ~/.zsh_local ] && source ~/.zsh_local # local configs, private envs

# lang
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# antigen setup
antigen use oh-my-zsh

antigen bundle git
antigen bundle pip
antigen bundle z
antigen bundle bundler

antigen bundle zsh-users/zsh-completions
antigen bundle mafredri/zsh-async

antigen apply

# Aliases
alias o="open"

# History size
setopt HIST_IGNORE_SPACE # command without history when prefix with Space
HISTSIZE=100000
SAVEHIST=$HISTSIZE

# Load nix

[ -f ~/.nix-profile/etc/profile.d/nix.sh ] && source ~/.nix-profile/etc/profile.d/nix.sh

# Editor
export EDITOR="vim"

# PATH
export PATH=~/.bin:$PATH

# emacs bin
export PATH=~/.emacs.d/bin/:$PATH

# Nvim
if type nvim > /dev/null; then
  alias vi="nvim"
  alias vim="nvim"
fi

# compass
if type compass > /dev/null; then
  eval "$(compass shell)"
fi

# fzf
if [ -n "${commands[fzf-share]}" ]; then
  source "$(fzf-share)/key-bindings.zsh"
  source "$(fzf-share)/completion.zsh"
fi

# homebrew no update
export HOMEBREW_NO_AUTO_UPDATE=1

# starship
if type starship > /dev/null; then
  eval "$(starship init zsh)"
fi
