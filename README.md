How to symlink all dotfiles in a directory recursively
Have a dotfiles directory that is structured as to how they should be structured at $HOME

dotfiles_home=~/dotfiles/home  # for example
cp -rsf "$dotfiles_home"/. ~

-r: Recursive, create the necessary directory for each file
-s: Create symlinks instead of copying
-f: Overwrite existing files (previously created symlinks, default .bashrc, etc)
/.: Make sure cp "copy" the contents of home instead of the home directory itself.

