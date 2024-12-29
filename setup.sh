sudo apt -y install zsh

sudo apt update; sudo apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev


source zsh.sh

wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash
curl https://pyenv.run | bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


source ~/.zshrc

rm ~/.zshrc
cp ./configs/zshrc ~/.zshrc
source ~/.zshrc

nvm install --lts
nvm use --lts

source ./folder_setup.sh

source go.sh



