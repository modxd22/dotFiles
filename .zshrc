# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="josh"
ZSH_THEME="gianu"

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
plugins=(git compleat history-substring-search vi-mode zsh-syntax-highlighting zsh-autocomplete)

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

#========== Aliases
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias srcz="source ~/.zshrc"
alias v="vim"
alias vimrc="vim ~/.vimrc"
alias lrc="vim ~/.config/awesome/rc.lua"
alias thrc="vim ~/.config/awesome/themes/powerarrow/theme.lua"
alias prc="vim ~/.config/picom/picom.conf"
alias zshrc="vim ~/.zshrc"
alias t="tree"
alias xrc="vim ~/.xinitrc"
alias alsa="alsamixer"
alias scim="sc-im"
alias starwars="telnet towel.blinkenlights.nl"
alias notepic="scrot -s vimwiki/Zettelkasten/Files/'%Y-%m-%d_$wx$h.png' -e 'optipng $f' -s"
alias youtube3="mpv --ytdl-format=18 " 
alias dyoutube3="youtube-dl -f 18 " 
alias dyoutube7="youtube-dl -f 22 " 
alias youtubea="mpv --ytdl-format=140 " 
alias dyoutubea="youtube-dl -f 140 " 
alias pptx2pdf="soffice --headless --convert-to pdf"
alias z="zathura"
alias ts="task sync"


# Taken from arch wiki https://wiki.archlinux.org/title/Keyboard_input#Identifying_keycodes_in_Xorg it shows the name of the keys you press
#alias keynames="xev | awk -F'[ )]+' '/^KeyPress/ { a[NR+2] } NR in a { printf "%-3s %s\n", $5, $8 }'"

alias ftc="neofetch"

# Removes all dependences that are not required by any package
# alias dprm="urxvt -e sudo pacman -R $(pacman -Qdt | awk '{ print $1 }')"

#===========
#
# Vi keybindings
 set -o vi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


# Color the console, I dont' think it is adding any value
# if [ "$TERM" = "linux" ]; then
#     _SEDCMD='s/.*\*color\([0-9]\{1,\}\).*#\([0-9a-fA-F]\{6\}\).*/\1 \2/p'
#     for i in $(sed -n "$_SEDCMD" $HOME/.Xresources | awk '$1 < 16 {printf "\\e]P%X%s", $1, $2}'); do
#         echo -en "$i"
#     done
#     clear
# fi



# check if it exists first
export PATH=$(echo $(cat ~/.profile))
export TASKDDATA=/var/taskd
export GTK_THEME=Adwaita:dark
#export BORDERCOLOR="#f0a21b"
export RANGER_LOAD_DEFAULT_RC=false
export EDITOR=vim

#######################################################




# Startup
#tmux a -t 0 || tmux new -s 0
# fortune | lolcat

#######################################################
