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
alias ...='cd ../../'                       
alias ..='cd ../'                           
alias .3='cd ../../../'                     
alias .4='cd ../../../../'                  
alias .5='cd ../../../../../'               
alias .6='cd ../../../../../../'  
alias c='clear'
alias dir='ls' # don't judge
alias f='open -a Finder ./'
alias g='git'
alias h='history | tail -n 11 | head -n 10'
alias lr='/bin/ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias qf='find . -name '
alias rmi='rm -i'
alias rp='source ~/dotfiles/.bash_profile' # refresh profile
alias s='subl'
alias ~='cd ~/'
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }
