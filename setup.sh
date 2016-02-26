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

EMACS_DIR=~/.emacs.d
if [ ! -d $EMACS_DIR/emacs-goodies-el ] ; then
    echo "No emacs goodies found. Installing"
    mkdir -p $EMACS_DIR
    ln -s $BASE_DIR/emacs-goodies-el/ $EMACS_DIR/emacs-goodies-el
fi
if [ ! -d $EMACS_DIR/emacs-modes ] ; then
    echo "No emacs modes found. Installing"
    mkdir -p $EMACS_DIR
    ln -s $BASE_DIR/emacs-modes/ $EMACS_DIR/emacs-modes
fi

echo Complete
