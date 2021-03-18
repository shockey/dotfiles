for filename in '.bash_profile' '.gitconfig' '.gitignore' '.hyper.js' '.spacemacs' '.vimrc' '.zprofile' '.zshrc' ;
  do
    # if a regular file exists, make a backup
    [ -f ~/$filename ] && mv -v ~/${filename} ~/${filename}_before_first_dotfile_sync
    # symlink ~ to our version
    ln -vf `pwd`/$filename ~
  done
