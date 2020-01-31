# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-z zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# GPG TTY setting, allows piping into `gpg`
# for example via `pbpaste`
export GPG_TTY=$(tty)

### Import my bash profile
source ~/.bash_profile

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

# Share a fortune when the shell starts
fortune

#### Machine-specific configs, DO NOT COMMIT CHANGES BELOW THIS LINE

