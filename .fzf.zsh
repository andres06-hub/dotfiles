# Setup fzf
# ---------
if [[ ! "$PATH" == */home/as_dev/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/as_dev/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/as_dev/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/as_dev/.fzf/shell/key-bindings.zsh"
# Alias
alias fv="fzf --print0 | xargs -0 -o nvim"
alias ft="fzf-tmux"

# Style
export FZF_DEFAULT_OPTS="--height=40% --layout=reverse --info=inline --border --margin=1 --padding=1"

