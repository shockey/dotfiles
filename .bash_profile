# dest: ~/.bash_profile

export EDITOR='/usr/bin/nano -OScim'

# command changes
# alias ls="ls -AFGhlo"
lsreplacement () {
	var="$(script -q /dev/null ls -AFGhlo $1 | sed "1 d" )"
	echo "$var" 
}
alias ls="lsreplacement"
alias mkdir='mkdir -pv'
alias nano='nano -SOcim'

d() { builtin cd "$@"; ls; }

# new commands
alias ..='cd ../'                           
alias ...='cd ../../'                       
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'  
alias ~='cd ~/'
alias dir='ls' # don't judge
alias rmi='rm -i'
alias f='open -a Finder ./'
alias c='clear'
alias lr='/bin/ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias qf='find . -name '
alias g='git'
alias s='subl'
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }
