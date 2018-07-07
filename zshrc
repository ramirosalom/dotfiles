# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(zsh-git-prompt zsh-syntax-highlighting history-substring-search tmux)

export ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh
source $HOME/.bash_aliases

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"

export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export ANDROID_HOME="$HOME/Android/Sdk"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export LC_ALL=en_US.UTF-8

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$PATH"
export QT_QPA_PLATFORM=''

export NVM_DIR="/home/cristian/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  if [[ -f .nvmrc && -r .nvmrc ]]; then
    nvm use
  elif [[ $(nvm version) != $(nvm version default)  ]]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

#Es muy lento!!
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

