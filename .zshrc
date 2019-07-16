# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/anaconda3/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jaedong/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="muse"
#ZSH_THEME="gentoo"
#ZSH_THEME="af-magic"
#ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
  tmux
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# git
alias ga='git add'
alias gc='git commit -m '
alias gd='git diff'
alias gs='git status'
alias gp='git pull'
alias gl='git log'
alias gd='git diff'
alias gpo='git push origin'

# tmux
alias ta='tmux attach -t'
alias ts='tmux new -s'
alias tl='tmux ls'
alias tk='tmux kill-session -t'

# docker
alias da='docker attach'
alias ds='docker ps'

# gpu status
alias wa='watch -n 0.5 nvidia-smi'
alias wau='gpustat --watch 0.5'

# etc
alias ac='. ~/p3/bin/activate'
alias note='sudo jupyter notebook --allow-root'
alias http='python3 -m http.server '
alias ns='nvidia-smi'
alias display='qlmanage -p'
alias py='python3'
alias mat='matlab -nojvm -nodisplay -nosplash'



tb() {
 tensorboard --logdir="$1"
}

export EDITOR=/usr/local/bin/nvim

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zle-keymap-select () {
#    if [ "$TERM" = "xterm-256color" ]; then
#        if [ $KEYMAP = vicmd ]; then
#            # the command mode for vi
#            echo -ne "\e[2 q"
#        else
#            # the insert mode for vi
#            echo -ne "\e[2 q"
#        fi
#    fi
# }

function zle-line-init zle-keymap-select {
    if [[ $KEYMAP == vicmd ]]; then
	 echo -ne "\e[2 q"
#       gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block
    elif [[ $KEYMAP == (main|viins) ]]; then
	 echo -ne "\e[2 q"
#       gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block
    fi
}
zle -N zle-line-init
zle -N zle-keymap-select

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export CUDA_HOME=/usr/local/cuda
export PATH=$CUDA_HOME/bin:$PATH
export PATH=/root/jaedong/anaconda3/bin:$PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/nvidia/lib64:

MUJOCO_PY_MJKEY_PATH=/home/jaedong/.mujoco/mjkey.txt
MUJOCO_PY_MJPRO_PATH=/home/jaedong/.mujoco/mjpro150

