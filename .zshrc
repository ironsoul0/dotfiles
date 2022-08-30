ZSH_THEME="spaceship"
export ZSH="/Users/ironsoul/.oh-my-zsh"

plugins=(git tmux)

source $ZSH/oh-my-zsh.sh


# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,.idea,.next}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export EDITOR='nvim'
# export JAVA_HOME=$(/usr/libexec/java_home)
# export NODE_OPTIONS=--max_old_space_size=4096

alias study='open ~/Desktop/studying'
alias dev='cd ~/development'
alias hack='cd ~/hacking'
alias acm='code ~/development/olymp'
alias prolog='swipl'
alias listen='lsof -i -P | grep -i "listen"'
alias vi='nvim'
alias cat='bat'
alias ls='exa'
alias cd='z'
alias here='ranger .'
alias mb='mongo -u user -p pass'
alias s='rg -in'
alias ws='webstorm'
alias sz='du -hd1'

source ~/.my_custom_commands.sh
source ~/.eth.sh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(pyenv init -)"
eval "$(zoxide init zsh)"

export PATH="$PATH:/Users/ironsoul/.foundry/bin"
