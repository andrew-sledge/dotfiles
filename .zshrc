### EXPORTS
export ZSH=/Users/ajsledge/.oh-my-zsh
export ZSH_THEME="robbyrussell"
export COMPLETION_WAITING_DOTS="true"
source $ZSH/oh-my-zsh.sh
export LANG=en_US.UTF-8
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/local/go/bin:$PATH
export VIMRUNTIME=/usr/local/share/vim/vim81
# Fuzzy finder
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow -g "!{.git,node_modules,__pycache__}/*" 2> /dev/null'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_R_COMMAND="$FZF_DEFAULT_COMMAND"
# Homebrew asked nicely
export PATH="/usr/local/opt/gettext/bin:$PATH"
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"
# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

### ZSH PLUGINS
plugins=(sudo git history taskwarrior tmux tmuxinator zsh-autosuggestions zsh-completions zsh-syntax-hightlighting, golang, python, nmap, docker, cp, aws, zsh-nvm)

### CUSTOM
# Custom stuff to not store in GH
source $HOME/.zsh-custom
source $HOME/.zsh-ddc

### FUNCTIONS
fliptable(){ echo "（╯°□°）╯ ┻━┻"; }
mahman(){ echo " (╭☞ ͡° ͜ʖ ͡° )╭☞"; }
shrug(){ echo " ¯\_(ツ)_/¯"; }
tmuxcheat() { less ~/.tmuxcheat }

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
