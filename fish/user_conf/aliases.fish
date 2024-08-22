# this section sets aliases from user

#hibernate
alias hibernate 'systemctl hibernate'

alias update 'yay -Syu'
alias zed 'zeditor'
alias ls 'exa --long --header'
alias la 'exa --long --header -a'
alias tree 'exa --tree'

alias clear "printf '\033[2J\033[3J\033[1;1H'"

#set default python environment to 'default'
alias enable_python_env='source /home/chester/.pyenv/default/bin/activate.fish'
alias disable_python_env='deactivate -d'
