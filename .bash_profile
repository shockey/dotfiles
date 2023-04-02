# dest: ~/.bash_profile

export EDITOR='vim'

# command changes
# alias lss="ls -AFGhlo"
lsreplacement () {
	var="$(script -q /dev/null ls -AFGhlo $1 | sed "1 d" )"
	echo "$var" 
}
alias lss="lsreplacement"
alias mkdir='mkdir -pv'
alias nano='nano -ASOcim'
alias agq='ag -Q'

# new commands
alias ...='cd ../../'                       
alias ..='cd ../'                           
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../' 
# old: 'history | tail -n 2 | head -n 1 | cut -c 8- | '
alias 1='$(fc -n -l -1 -1)'
alias 2='$(fc -n -l -2 -2)'
alias 3='$(fc -n -l -3 -3)'
alias 4='$(fc -n -l -4 -4)'
alias 5='$(fc -n -l -5 -5)'
alias c='clear'
alias dir='ls' # don't judge
alias f='open -a Finder'
alias f.='open -a Finder ./'
alias g='git'
alias gpom='g p origin master'
alias gsync='g pu --rebase upstream master && g p origin master -f'
alias h='history | tail -n 11 | head -n 10'
alias lr='/bin/ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias n='npm'
alias na='nano'
alias nmt='nodemcu-tool'
alias nr='npm run'
alias qf='find . -name '
alias rmi='rm -i'
alias rp='source ~/dotfiles/.bash_profile' # refresh profile
alias s='subl'
alias ss='python -m SimpleHTTPServer .'
alias stdts='date -u "+%F-%H%M%SZ"'
alias ~='cd ~/'
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }


# if [ -f $(brew --prefix)/etc/bash_completion ]; then
# . $(brew --prefix)/etc/bash_completion
# fi

# map npm bin directories to $PATH (https://gist.github.com/airtonix/9925531)
export PATH=$HOME/bin:$PATH

ORIGINAL_PATH=$PATH

function build_path {
	export PATH=$(npm bin):$ORIGINAL_PATH
}

PROMPT_COMMAND=build_path

# Fuck, with some perf enhancements from https://github.com/nvbn/thefuck/issues/859 
# if command -v thefuck >/dev/null 2>&1; then
#   fuck () {
#     eval "$(thefuck --alias)" && fuck
#   }
# fi

# Load nvm with bash completions
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion  # disabled, see https://github.com/robbyrussell/oh-my-zsh/issues/3356#issuecomment-234727644

# Use Postgres.app pg binaries instead of macOS builtins
export PATH="/Applications/Postgres.app/Contents/Versions/latest/bin:$PATH"

#### Machine-specific configs, DO NOT COMMIT CHANGES BELOW THIS LINE

