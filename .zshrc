# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-z)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8


### Share a fortune when the shell starts
fortune

# GPG TTY setting, allows piping into `gpg`
# for example via `pbpaste`
export GPG_TTY=$(tty)

### Import my bash profile
source ~/.bash_profile

# Fuck, with some perf enhancements from https://github.com/nvbn/thefuck/issues/859 
if command -v thefuck >/dev/null 2>&1; then
  fuck() {
    eval "$(thefuck --alias)" && fuck
  }
fi

# Load nvm with bash completions
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion  # disabled, see https://github.com/robbyrussell/oh-my-zsh/issues/3356#issuecomment-234727644

# Use Postgres.app pg binaries instead of macOS builtins
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

# ZSH Autosuggest
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Spaceship zsh prompt custom options
SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  hg            # Mercurial section (hg_branch  + hg_status)
  package       # Package version
  node          # Node.js section
  golang        # Go section
  aws           # Amazon Web Services section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  kubecontext   # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
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

#### Machine-specific configs, DO NOT COMMIT CHANGES BELOW THIS LINE

