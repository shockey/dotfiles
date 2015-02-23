# dest: ~/.bash_profile

export EDITOR='/usr/bin/nano -BSOcim'

# command changes
# alias ls="ls -AFGhlo"
lsreplacement () {
	var="$(script -q /dev/null ls -AFGhlo $1 | sed "1 d" )"
	echo "$var" 
}
alias ls="lsreplacement"
alias mkdir='mkdir -pv'
alias nano='nano -BSOcim'

d() { builtin cd "$@"; ll; }

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
ffs () { /usr/bin/find . -name "$@"'*' ; }
ffe () { /usr/bin/find . -name '*'"$@" ; }
peek () { height=$(tput lines) ; head -n $((height - 2)) $1 ; }
peekt () { height=$(tput lines) ; tail -n $((height - 3)) $1 ; } # acts strange sometimes, needs more testing