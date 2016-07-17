# EXPORTS --------------------------------------------------------------------------
export JDK_HOME="/usr/lib/jdk1.8.0_77"
# ADD ACTUAL PATH TO ACTUAL INTELLIJ HERE
# export PATH="$PATH:/usr/lib/idea-IU-143.2332.3/bin"

# HISTORY CONFIGS ------------------------------------------------------------------
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

if [[ $- == *i* ]]
then
    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'
fi

# GIT-BASH-PROMPT ------------------------------------------------------------------
source ~/.bash-git-prompt/gitprompt.sh
GIT_PROMPT_ONLY_IN_REPO=1

