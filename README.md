These dotfiles are intended for use on OS X.

### Bash
##### New commands
- `..`, `...`, `.[3,4,5,6]`: extensions of cd, goes up 1-6 levels
- `c`: clears the Terminal window
- `d`: cd shortcut, runs ls after changing directories
- `dir`: alias for ls (couldn't get out of the habit)
- `f`: opens the current directory in Finder
- `fuck`: [TheFuck](https://github.com/nvbn/thefuck)
- `ffe`: find a file that ends with a given string
- `ffs`: find a file that starts with a given string
- `h`: displays last ten commands ran
- `lr`: recursive ls
- `n`: nano
- `qf`: quickly find a file
- `rmi`: interactive rm
- `rp`: refresh profile (reloads dotfiles' .bash_profile)
- `s`: shortcut for Sublime Text
- `s.`: opens current directory in Sublime Text

##### Changed commands
- `ls` becomes `ls -AFGhlo`, with a pipe to sed:
  - `-A`: don't list . and ..
  - `-F`: append indicators to names
  - `-G`: colorized output
  - `-h`: file size suffixes
  - `-l`: long format
  - `-o`: omit group name (mostly boring anyway)
  - the sed pipe removes the total blocks line
- `mkdir` becomes `mkdir -pv`: 
  - `-p`: create intermediate directories, if necessary
  - `-v`: list folders as they're created
- `nano` becomes `nano -OScim`:
  - `-O`: Use the blank line below the status bar as editing space.
  - `-S`: Enable smooth scrolling.
  - `-c`: Constantly show cursor position.
  - `-i`: Autoindent new lines.
  - `-m`: Enable mouse support.

### Git
- `a`: git add
- `amend`: git commit --amend
- `br`: git branch
- `ci`: git commit
- `co`: git checkout
- `cl`: git clone
- `di`: git diff
- `hist`: improvements as suggested by Git Immersion
- `p`: git push
- `pu`: git pull
- `st`: git status
- sets default editor to Nano
- sets user info (change this unless you want to impersonate me)