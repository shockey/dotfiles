export EDITOR='vim'

# new commands
alias ...='cd ../../'                       
alias ..='cd ../'                           
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../' 
alias 1='$(fc -n -l -1 -1)'
alias 2='$(fc -n -l -2 -2)'
alias 3='$(fc -n -l -3 -3)'
alias 4='$(fc -n -l -4 -4)'
alias 5='$(fc -n -l -5 -5)'
alias f='open -a Finder'
alias f.='open -a Finder ./'
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }
alias g='git'
alias gpom='git push origin master'
alias gsync='git pull --rebase origin && git push origin'
alias h='history | tail -n 11 | head -n 10'
alias isoz='date -u "+%F-%H%M%SZ"'
alias lr='/bin/ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias lss='ls -AFGhlo $1 | sed "1 d"'
alias nmt='nodemcu-tool'
alias nr='npm run'
alias qf='find . -name '
alias rp='source ~/dotfiles/.bash_profile' # refresh profile
alias ss='python3 -m http.server 9000 .'


if [ -f $(brew --prefix)/etc/bash_completion ]; then
  $(brew --prefix)/etc/bash_completion
fi

# map npm bin directories to $PATH (https://gist.github.com/airtonix/9925531)
export PATH=$HOME/bin:$PATH

ORIGINAL_PATH=$PATH

function build_path {
	export PATH=$(npm bin):$ORIGINAL_PATH
}

PROMPT_COMMAND=build_path

# Load nvm with bash completions
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion  # disabled, see https://github.com/robbyrussell/oh-my-zsh/issues/3356#issuecomment-234727644

# Use Postgres.app pg binaries instead of macOS builtins
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

#### Machine-specific configs, DO NOT COMMIT CHANGES BELOW THIS LINE

# Brew
PATH="/usr/local/bin:$PATH"
