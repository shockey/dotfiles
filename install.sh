for filename in '.bash_profile' '.gitconfig' '.gitignore' '.hyper.js' '.spacemacs' '.vimrc' '.zprofile' '.zshrc' ;
  do
    if [ -e ~/$filename ]; then
        link_count=$(stat -f %l ~/$filename)
    else
        link_count=0
    fi

    if [ -f ~/$filename ] && [ $link_count -eq 1 ]; then
        # if a regular file exists, and isn't our hard link... make a backup
        mv -v ~/${filename} ~/${filename}_before_first_dotfile_sync
    fi

    # hardlink ~ to our version
    ln -vf `pwd`/$filename ~/$filename
  done

# Dependencies
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
