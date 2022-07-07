curl -sL install-node.now.sh/lts | bash

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# syntastic
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
 curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic


# tmux Setting
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
mv .tmux* ~/

cp .vimrc ~/
cp .bashrc ~/
cp .gitignore ~/
cp .gitconfig ~/

# zsh Install
wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

cp .zshrc ~/
source ~/.zshrc

pip install git+https://github.com/wookayin/gpustat.git@master


# Neovim Install
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
./nvim.appimage

mkdir -p ~/.config/
ln -s ~/.vim ~/.config/nvim 
ln -s ~/.vimrc ~/.config/nvim/init.vim 


