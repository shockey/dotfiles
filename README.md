These dotfiles are intended for use on OS X.

### Bash
##### New commands
- `[1,2,3,4,5]`: runs the command that was *n* commands ago, works for 1-5.
- `..`, `...`, `.[3,4,5,6]`: extensions of cd, goes up 1-6 levels
- `f`: opens a directory in Finder.app
- `f.`: opens the current directory in Finder.app
- `ffe`: find a file that ends with a given value within the current directory
- `ffs`: find a file that starts with a given value within the current directory
- `gpom`: equivalent to `git push origin master`
- `gysnc`: equivalent to running `git pull --rebase origin` then `git push origin`
- `h`: displays last ten commands ran
- `isoz`: print the current time as a ISO 8601 timestamp
- `lr`: recursively list directory names within the current directory in a tree
- `lss`: `ls -AFGhlo`, with a pipe to sed...
  - `-A`: don't list . and ..
  - `-F`: append indicators to names
  - `-G`: colorized output
  - `-h`: file size suffixes
  - `-l`: long format
  - `-o`: omit group name (mostly boring anyway)
  - the sed pipe removes the total blocks line
- `qf`: quickly find a file with the exact name given within the current directory
- `rp`: refresh profile (reloads dotfiles' .bash_profile)
- `ss`: start a Python-based HTTP server on all network interfaces that serves the current directory

### Git

- Enables Git LFS
- Requires signed commits (needs `gpg` in $PATH)
- Rewrites HTTP GitHub URLs to use SSH instead

Don't forget to set `user.email`, since it's omitted here (as email may vary between personal and professional contexts).

##### New commands

- `a`: `add`
- `amd`: `commit --amend`
- `bc`: `checkout -b`
- `br`: `branch`
- `ci`: `commit`
- `cl`: `clone`
- `co`: `checkout`
- `com`: `checkout master`
- `di`: `diff`
- `dis`: `diff --staged`
- `hist`: display a prettier version of `git log`
- `ph`: `push`
- `pl`: `pull`
- `plom`: `pull origin master`
- `plum`: `pull upstream master`
- `rsh`: `reset --hard`
- `s`: `status`
- `sd`: `stash drop`
- `sp`: `stash pop`
- `st`: `stash push --include-untracked`
- `st`: `status`
