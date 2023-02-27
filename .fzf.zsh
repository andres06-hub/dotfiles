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

# Open whit vim
alias N="0"
alias XV="xargs -$N -o nvim"

#Config bat : styles
alias sbat="'bat -n --color=always {}'"

# Aliases
#alias fv="fzf --preview $sbat --print$N | $XV"
alias fv="fzf --preview 'bat -n --color=always {}' --print0 | xargs -0 -o nvim"
alias ft="fzf-tmux | xclip -sel c"

# Style
export FZF_DEFAULT_OPTS="--height=90% --layout=default --info=inline --border --margin=1 --padding=1"

# - Popup window (center of the current window)
#let g:fzf_layout={ 'window': { 'width': 0.9, 'height': 0.6, 'relative': v:true } }


