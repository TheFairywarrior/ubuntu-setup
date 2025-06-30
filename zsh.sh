sudo apt -y install zsh

zsh

rm ~/.zshrc
cp ./configs/zshrc ~/.zshrc
cp ./configs/my_profile ~/.my_profile
source ~/.zshrc


chsh -s $(which zsh)

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

