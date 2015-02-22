These dotfiles are intended for use on OS X.

### Bash
##### New commands
- `..`, `...`, `.[3,4,5,6]`: extensions of cd, goes up 1-6 levels
- `c`: clears the Terminal window
- `dir`: alias for ls (couldn't get out of the habit)
- `f`: opens the current directory in Finder
- `ffe`: find a file that ends with a given string
- `ffs`: find a file that starts with a given string
- `lr`: recursive ls
- `qf`: quickly find a file
- `rmi`: interactive rm

##### Changed commands
- `ls` becomes `ls -AFGhlo`:
  - `-A`: don't list . and ..
  - `-F`: append indicators to names
  - `-G`: colorized output
  - `-h`: file size suffixes
  - `-l`: long format
  - `-o`: omit group name (mostly boring anyway)
- `mkdir` becomes `mkdir -pv`: mkdir will create intermediate directories if necessary, and list folders as they're created
- `rm` becomes `rm --preserve-root`: makes rm a little less dangerous
- `nano` becomes `nano -BScim`:
  - `-B`: When saving a file, back up the previous version of it to the current filename suffixed with a ~.
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
- `hist`: improvements as suggested by Git Immersion
- `p`: git push
- `st`: git status
- sets default editor to Sublime Text
- sets user info (change this unless you want to impersonate me)