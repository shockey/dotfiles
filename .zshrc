# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/kyle/.oh-my-zsh

# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Fuck!
# eval "$(thefuck --alias)"

# eval $(thefuck --alias)

### Share a fortune
fortune

### Import `npm bin` path to PATH
export PATH="$PATH:./node_modules/.bin"

### Import my bash profile
source ~/.bash_profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion  # disabled, see https://github.com/robbyrussell/oh-my-zsh/issues/3356#issuecomment-234727644

### Set LANG for mosh
export LANG="en_US.UTF-8"

### Postgres.app
export PATH=/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH

### ZSH Autosuggest
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

### ZSH Spaceship

SPACESHIP_PROMPT_ORDER=(
  time            # Time stamps section
  user            # Username section
  dir             # Current directory section
  host            # Hostname section
  git             # Git section (git_branch + git_status)
  # hg            # Mercurial section (hg_branch  + hg_status)
  package         # Package version
  node            # Node.js section
  # ruby          # Ruby section
  # elixir        # Elixir section
  # xcode         # Xcode section
  # swift         # Swift section
  # golang        # Go section
  # php           # PHP section
  # rust          # Rust section
  # haskell       # Haskell Stack section
  # julia         # Julia section
  # docker        # Docker section
  aws             # Amazon Web Services section
  # venv          # virtualenv section
  # conda         # conda virtualenv section
  # pyenv         # Pyenv section
  # dotnet        # .NET section
  # ember         # Ember.js section
  # kubecontext   # Kubectl context section
  # terraform     # Terraform workspace section
  exec_time       # Execution time
  line_sep
  # battery       # Battery level and status
  # vi_mode       # Vi-mode indicator
  jobs            # Background jobs indicator
  exit_code       # Exit code section
  char            # Prompt character
)

SPACESHIP_TIME_SHOW=true
SPACESHIP_PACKAGE_SHOW=true
SPACESHIP_PACKAGE_PREFIX="at "
SPACESHIP_PACKAGE_SYMBOL=""
SPACESHIP_EXIT_CODE_SHOW=true
SPACESHIP_GIT_SYMBOL=""
SPACESHIP_GIT_STATUS_COLOR=202

autoload -U promptinit; promptinit
prompt spaceship
