SYMLINK_LIST="
.bashrc
.bash_aliases
.vimrc
.bash_profile
.emacs
"

BASE_DIR=$(cd $(dirname $0);pwd)
cd $BASE_DIR

for FILE in $SYMLINK_LIST; do
    rm -rf ~/$FILE
    ln -s $BASE_DIR/$FILE ~/$FILE
done

if [ ! -d /usr/share/emacs/site-lisp/emacs-goodies-el ] ; then
    echo "No emacs goodies found. Installing"
    ln -s $BASE_DIR/emacs-goodies-el/ /usr/share/emacs/site-lisp/emacs-goodies-el
fi

echo Complete
