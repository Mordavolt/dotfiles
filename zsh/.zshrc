# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="custom"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
plugins=(archlinux bower colored-man-pages colorize common-aliases docker docker-compose emoji fzf gem git gradle grunt kubectl mvn ng npm pip sbt scala spring systemd vagrant)


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
#
alias 2clip='xclip -selection c'
alias mvn-skip='mvnd clean install -DskipTests -Dverification.skip'
alias mvn-ver='mvnd clean install -DskipTests'
alias mvn-int='mvnd clean install'
alias dc='docker compose'
alias secrets='docker run --rm -it --volume "${PWD}:/home/picnic/repository" --user "$(id -u):$(id -g)" teampicnic/picnic-secrets-scanner:2.4.0'
alias check='picnic-shared-tools/patch.sh && picnic-shared-tools/format.sh && mvnd clean install -DskipTests'

hash -d wms=~/work/picnic-wms
hash -d wmsf=~/work/picnic-wms-frontend
hash -d srs=~/work/picnic-shortage-resolution-service
hash -d inv=~/work/picnic-ws-inventory
hash -d pay=~/work/picnic-payments
hash -d store=~/work/picnic-store
hash -d plat=~/work/picnic-platform
hash -d interview=~/work/interview

cat /home/mordavolt/.cache/wal/sequences
eval $(thefuck --alias)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

PATH="$HOME/.local/bin:$HOME/.cabal/bin:$HOME/.ghcup/bin:$PATH"

MAVEN_OPTS="-Xms1024m -Xmx4096m"

ZSH_CACHE_DIR=$HOME/.oh-my-zsh-cache
if [[ ! -d $ZSH_CACHE_DIR ]]; then
  mkdir $ZSH_CACHE_DIR
fi

DISABLE_MAGIC_FUNCTIONS=true
source nexus_credentials.sh
source $ZSH/oh-my-zsh.sh

function acheck() {
  if [ -z "$1" ]
    then
      echo "Please provide the path to an assignment Git repo"
      return 1
  fi
  echo "Updating Assignment Checker image"
  docker pull teampicnic/picnic-java-assignment-checker:heads-master
  echo "Running Assignment Checker on $1"
  docker run -it --volume "$1:/home/picnic/java-assignment" -e "NEXUS_USERNAME=$NEXUS_USERNAME" -e "NEXUS_PASSWORD=$NEXUS_PASSWORD" teampicnic/picnic-java-assignment-checker:heads-master
}
