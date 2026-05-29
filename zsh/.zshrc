# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/mamba.sh" ]; then
    . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<


#mamba activate ml

alias home='cd /Volumes/stuff/ELECE'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias c='clear'
alias code="unset VSCODE_IPC_HOOK_CLI; code"
alias ls="eza -1 -l --icons --group-directories-first --hyperlink" # Alias para eza 1 liner and long
alias alias ze='zellij attach estandar'
#alias lc='colorls -lA --sd'
export EDITOR="micro"


# Initialize Zsh completions
autoload -Uz compinit
compinit

# Initialize zoxide
eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

# Set up fzf key bindings and fuzzy completion 
source <(fzf --zsh)


# Equivalent of setting DISABLE_AUTOUPDATER, DISABLE_FEEDBACK_COMMAND, DISABLE_ERROR_REPORTING, and DISABLE_TELEMETRY
export CLAUDE_CODE_DISABLE_NONESSENTIAL_TRAFFIC=true


export PATH="$HOME/.local/bin:$PATH"
