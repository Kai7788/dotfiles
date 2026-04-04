HISTFILE="$HOME/.histfile"
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory
setopt sharehistory
setopt hist_ignore_dups

autoload -U colors && colors
setopt PROMPT_SUBST

if [[ $EUID -eq 0 ]]; then
PROMPT='%F{red}%n@%m%f %F{yellow}%~%f %# '
else
PROMPT='%F{green}%n@%m%f %F{yellow}%~%f %# '
fi

if [ -S "/run/user/$(id -u)/ssh-agent.socket" ]; then
export SSH_AUTH_SOCK="/run/user/$(id -u)/ssh-agent.socket"
fi

ZSH_PLUGIN_DIR="$HOME/.zsh/plugins"

if [ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
elif [ -f "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh" ]; then
source "$ZSH_PLUGIN_DIR/zsh-autosuggestions/zsh-autosuggestions.zsh"
fi

if [ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
elif [ -f "$ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
source "$ZSH_PLUGIN_DIR/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

autoload -Uz compinit
compinit

bindkey -v

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias ip='ip --color=auto'
alias tree='tree -C'

alias aslr_off='echo 0 | sudo tee /proc/sys/kernel/randomize_va_space'
alias aslr_on='echo 2 | sudo tee /proc/sys/kernel/randomize_va_space'

[ -f "$HOME/.zsh_aliases" ] && source "$HOME/.zsh_aliases"
[ -f "$HOME/.zsh_local" ] && source "$HOME/.zsh_local"

