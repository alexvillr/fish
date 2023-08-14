if status is-interactive
    export LANG='en_US.UTF-8'
    export LC_ALL='en_US.UTF-8'
    export EDITOR='/opt/homebrew/bin/nvim'
    export MAMBA_EXE='/opt/homebrew/opt/micromamba/bin/micromamba'
    export MAMBA_ROOT_PREFIX='/Users/alexviller/micromamba'
    set -gx PATH $PATH ~/.ghcup/bin/
    set -gx PATH $PATH ~/.local/bin/
    set -gx PATH $PATH ~/.spicetify/
    alias conda="micromamba"
    alias lg='lazygit'
    alias cl='clear; neofetch'
    alias gitlog='git log --all --graph --pretty=format:"%Cred%h%Creset %C(bold blue)%an%Creset :%C(yellow)%d%Creset %s %Cgreen(%cr) %Creset" --abbrev-commit'
    alias nosleep='caffeinate -d'
    alias g="git"
    alias ls='exa -al --color=always --group-directories-first --icons'
    alias la='exa -a --color=always --group-directories-first --icons'
    alias ll='exa -l --color=always --group-directories-first --icons'
    alias lt='exa -aT --color=always --group-directories-first --icons'
    alias l='exa -lah --color=always --group-directories-first --icons'
end

function dev
    tmux new-session -A -s main
end
function ide
    tmux split-window
    tmux split-window-h
end

source (/opt/homebrew/bin/starship init fish --print-full-init | psub)

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/opt/homebrew/opt/micromamba/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/Users/alexviller/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<
