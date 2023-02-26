# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Themes
#zsH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME="norm"
ZSH_THEME="miloshadzic"

# Auto corrections
ENABLE_CORRECTION="false"

# Editot
export EDITOR='nvim'

# Fix the Java Problem
export _JAVA_AWT_WM_NONREPARENTING=1

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
HIST_STAMPS="mm/dd/yyyy/HHHH:MMMM:SSSS"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-navigation-tools
    sudo
    vscode
    python
    npm
    history
    archlinux
    web-search
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ASDF Completions
fpath=(${ASDF_DIR}/completions $fpath)
autoload -Uz compinit && compinit

# ASDF Configurations
. "$HOME/.asdf/asdf.sh" # ASDF
. "$HOME/.asdf/plugins/java/set-java-home.zsh" # Java
# --> Aliases
[[ -f ~/data/dotfile/.aliases ]] && source ~/data/dotfile/.aliases
alias copy.="xclip -sel c"
# Find files
alias findd="ls ~/ | grep $1"

# fzf : Es un buscador difuso de línea de comandos de propósito general.
# Es un filtro interactivo de Unix para la línea de comandos que se puede usar con cualquier lista; archivos, historial de comandos, procesos, nombres de host, marcadores, confirmaciones de git, etc.
[[ -f ~/data/dotfile/.fzf.zsh ]] && source ~/data/dotfile/.fzf.zsh

# BAT
export BAT_THEME="TwoDark"

# Web-Search : https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/web-search
