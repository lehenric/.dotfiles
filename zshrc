# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
 export ZSH=~/.oh-my-zsh
# Export
 export TERM="xterm-256color"
source ~/.config/powerlevel9k/themes/mavam

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="powerlevel9k/powerlevel9k"
 ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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
plugins=(
  zsh-autosuggestions
  colored-man-pages
  colorize
  tmux
  git
  sudo
  zsh-syntax-highlighting
  alias-tips
  docker
  fd
  vagrant
  bgnotify
  kubectl
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

# Set default VISUAL TEXT EDITOR
export VISUAL=nvim

# Conf less to work on directories
# must have .lessfilter in home dir
cat /etc/*release | grep -i fedora 2>&1 >/dev/null || eval "$(lesspipe)"

#export PATH=$PATH:~/bin

autoload -U +X bashcompinit && bashcompinit
source ~/work/azure/azure-cli/az.completion

# source configurations in ~/.zshrc.d 
for configuration in `ls ~/.zshrc.d/*.conf`
do
  source $configuration
done

PATHaddons=(
  ~/work/mongo/robomongo-0.9.0-rc4/bin
  ~/eclipse/
  ~/school/uml/Umlet/
  ~/bin/
  ~/work/maven/apache-maven-3.5.0/bin
  ~/work/robo3t/robo3t-1.2.1-linux-x86_64-3e50a65/bin
  /usr/local/jdk1.8.0_181/bin
  ~/work/nodejs/node-v10.11.0-linux-x64/bin
  ~/apps/cmake-3.13.4-Linux-x86_64/bin
  ~/work/bin
  $HOME/.yarn/bin
  $HOME/.config/yarn/global/node_modules/.bin
  $HOME/work/gradle/gradle-5.4.1/bin
  $HOME/gits/ncspot/target/release
  $HOME/go/bin
)
for pathAddon in ${PATHaddons[@]}
do
  PATH="$PATH:$pathAddon"
done
export PATH

#docker-compose completition
fpath=(~/.zsh/completion $fpath)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 

#custom java 
#export JAVA_HOME=/usr/local/jdk1.8.0_181
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
 [[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# node version manager installation
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
