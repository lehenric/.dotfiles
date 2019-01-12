# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
 export ZSH=/home/lehenric/.oh-my-zsh
# Export
 export TERM="xterm-256color"
ZSH_THEME="powerlevel9k/powerlevel9k"

#POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_MODE='nerdfont-complete'

#source /home/lehenric/.config/powerlevel9k/themes/simple
source /home/lehenric/.config/powerlevel9k/themes/cvuorinen 2>/dev/null

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
# ZSH_THEME="amuse"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions colored-man-pages colorize tmux git sudo ruby )

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
  alias zshconfig="vim ~/.zshrc"
  alias hgrep="history | grep "
  alias gilg='git lg --all'
  alias gdto='git difftool'
  alias umlet='umlet.sh & &>/dev/null'
  alias work='cd ~/work'
# alias ohmyzsh="mate ~/.oh-my-zsh"
  alias prettyjson='python -m json.tool'
  alias lll='ls -A1'
  alias pbcopy='xclip -sel clip'

  PATHaddons="\
/home/lehenric/work/mongo/robomongo-0.9.0-rc4/bin:\
/home/lehenric/eclipse/:\
/home/lehenric/school/uml/Umlet/:\
/opt/clion-2017.1.2/bin/:\
/home/lehenric/bin/:\
/home/lehenric/work/maven/apache-maven-3.5.0/bin:\
/home/lehenric/work/robo3t/robo3t-1.2.1-linux-x86_64-3e50a65/bin:\
/usr/local/jdk1.8.0_181/bin:\
/home/lehenric/work/nodejs/node-v10.11.0-linux-x64/bin\
"
  export PATH=$PATH:$PATHaddons
  source /home/lehenric/git/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Set default VISUAL TEXT EDITOR

  export VISUAL=vim

# Conf less to work on directories
# must have .lessfilter in home dir
cat /etc/*release | grep -i fedora 2>&1 >/dev/null || eval "$(lesspipe)"

#export PATH=$PATH:/home/lehenric/bin

autoload bashcompinit && bashcompinit
source '/home/lehenric/work/azure/azure-cli/az.completion'

# disk_usage function
disk_usage(){
  du -hx --max-depth=1 $1 | sort -h
}

bash_help(){
	bash -c "help $1" | less
}

tryssh(){
  until ssh "$1" 
  do
  :
  done
}

#docker-compose completition
fpath=(~/.zsh/completion $fpath)
 autoload -Uz compinit && compinit -i
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
source ~/.fonts/*.sh
# change icon for VSCODE
#cp /usr/share/applications/code.desktop  ~/.local/share/applications/vscode.desktop
#sed -i "s/Icon=code/Icon=vscode/g" ~/.local/share/applications/vscode.desktop


#custom java 
export JAVA_HOME=/usr/local/jdk1.8.0_181
