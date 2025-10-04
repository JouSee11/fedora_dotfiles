PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\n\[\e[38;5;117;2m\]\t\[\e[0m\] \[\e[38;5;70;1m\]\u\[\e[0m\] \[\e[38;5;252;1;4m\]\w\[\e[0m\] \[\e[38;5;141;1;3m\]${PS1_CMD1}\n\[\e[0;38;5;187m\]\$\[\e[0m\] '

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi


# Enable bash programmable completion features in interactive shells
if [ -f /usr/share/bash-completion/bash_completion ]; then
	. /usr/share/bash-completion/bash_completion
elif [ -f /etc/bash_completion ]; then
	. /etc/bash_completion
fi
bind 'set show-all-if-ambiguous off'
#bind 'TAB:menu-complete'
source ~/.local/share/blesh/ble.sh

source ~/.local/share/blesh/ble.sh

#show some graphics at the start (only in interactive shells)
if [[ $- == *i* ]]; then
    fastfetch
fi

