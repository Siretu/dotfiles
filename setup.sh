SYMLINK_LIST="
.bashrc
.bash_aliases
.vimrc
.bash_profile
"

BASE_DIR=$(cd $(dirname $0);pwd)
cd $BASE_DIR

for FILE in $SYMLINK_LIST; do
    rm -rf ~/$FILE
    ln -s $BASE_DIR/$FILE ~/$FILE
done

echo Complete
