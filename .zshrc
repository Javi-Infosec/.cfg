
zmodload zsh/zprof
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# javi custom aliases
alias cat='batcat'
alias ls='lsd'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
#alias novpn="ps -ef | grep openvpn | grep -v grep  | awk '{print $2}' | xargs sudokill -9 $1"
alias  novpn='ps -ef | grep openvpn | grep -v grep  | awk "{print \$2}" | xargs sudo kill -9 $1 1&>2'
alias  vpn='sudo openvpn ~/.vpns/htb.ovpn'
alias pgvpn='sudo openvpn ~/.vpns/PG.ovpn'
alias startkali='VBoxManage startvm kali-linux-2023.3 --type headless'
alias stopkali='VBoxManage controlvm kali-linux-2023.3 poweroff '
alias connectkali='kitty +kitten ssh -X kali@kalivm'
alias icat='kitty +kitten icat'
alias ncspot='/usr/bin/flatpak run --branch=stable --arch=x86_64 --command=ncspot io.github.hrkfdn.ncspot'
port=4444
#export OPENAI_KEY=
#export PATH=$PATH:/usr/local/bin
#export HTB_TOKEN=eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiI1IiwianRpIjoiNjdlODA2ZmNhNzFlZjNkOGE5YzE0NmU4ZGZmZmYxZTA0NjU2NDEzMzliYmMyNWZlNTdmMTRjM2U0YWQ0MjQ5OGM4MTc2OTNjMWY2ZmRlMjAiLCJpYXQiOjE3MDYzMjExMjYuNzAxOTQ5LCJuYmYiOjE3MDYzMjExMjYuNzAxOTUsImV4cCI6MTczNzg1NzEyNi42OTY5MzMsInN1YiI6IjYyMDM5Iiwic2NvcGVzIjpbIjJmYSJdfQ.BdPg7W17q-D6S92Qw1wuKxpEx6Gy1aoK0F2K4BMPQOFReACzAa0i0Y8A4c4Adhtm_Du_jBC526E2YWkFBPjmD_2a8_fwi3KL0RlliwFqOOpwAny-FuWn6hLxzbV2JrnerxUhZTPAjB-8f0hJljP6HbzKDSyJtuFepINrojQXfIJNAKyqHEx3zjIO4kzXlI-qFiwh_Iim6gcbCO4ySUIrTdbeVUWbhWOZmdeU7MfKrDsP2d-Abc_kmW_FsCF9j6QGR2hhroiYWp3EXKsT-c5AZ9KFqMARvGoShR72z4LcMuDiKr1GVwl3CNf6dM3P2CfqeVVpaDi8MQC_YpZYin5IX6ujX7VblRlvBbtIUglUN-2B3G0GH1A8XEXyqGodYG7Bbegr3AdRPduD2DFCQHCKU6JasLv04RQWNvUVS7YIjCNUQB6qvVd02SSYpYWluEqvNraDMes4MLi0FRfxk70u86gNu2aDDYNxkH6Ht-xKV3UhKaKBoVgm0akAmu5T4W7Hn3Or-ngxg7XFhpbFLKGTW36Sk-m_CAdnwqtQGuEpB-4GSfm3NzPkS-Qn-N2TRpuQAAY_v783V85Am6c4Up-eMOPzBqV5JUXKB4ADBKG464tNGBqdhNpU-P0UYT0P4LnSD1Z4Gr9NJv0C8OfLzF1InKGBk0eXkbrkP88GJnyXojM
eval "$(atuin init zsh --disable-up-arrow)"
#export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin:$GOPATH/bin
function tun() {
    export kaliIP="$(cat /home/javi/.vpns/tunIP)"
    export kaliPORT=4444
}
