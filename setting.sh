git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/gpakosz/.tmux.git
ln -s -f tmux/.tmux.conf
mv .tmux* ~/
cp .vimrc ~/
cp .bashrc ~/
cp .gitignore ~/
cp .gitconfig ~/
source ~/.bashrc
