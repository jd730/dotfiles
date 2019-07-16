git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# tmux setting
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
mv .tmux* ~/

cp .vimrc ~/
cp .bashrc ~/
cp .gitignore ~/
cp .gitconfig ~/

# zsh install
sudo apt-get -y install zsh
sudo apt-get -y install git-core
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

source ~/.zshrc
