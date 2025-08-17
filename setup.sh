###################################
## INSTALLING REQUIRED LIBRARIES ##
####################################
echo "INSTALLING REQUIRED LIBRARIES"
sudo apt update; sudo apt install -y build-essential libssl-dev zlib1g-dev \
libbz2-dev libreadline-dev libsqlite3-dev curl git \
libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
libpq-dev python3-dev diodon

###########################
## INSTALLING UTILITIES ##
##########################
# sudo -v ; curl https://rclone.org/install.sh | sudo bash

##################################
## SETTING UP FOLDER STRUCTURE ##
#################################
echo "SETTING UP FOLDER STRUCTURE"
source ./folder_setup.sh


###########################
## SETTING UP LANGUAGES ##
##########################
echo "INSTALLING PROGRAMMING ENVIRONMENTS"
# Node
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.1/install.sh | bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

nvm install --lts
nvm use --lts

# Python
curl https://pyenv.run | bash
curl -LsSf https://astral.sh/uv/install.sh | sh


# Go
# Setting up os requirements

OS="linux"
ARCH="amd64"


VERSION_RESPONSE=$(curl -s https://go.dev/VERSION?m=text)

# Extract the Go version by splitting on space and taking the first field
GO_VERSION=$(echo "$VERSION_RESPONSE" | head -n 1)

# Print the extracted version to confirm
echo "Latest Go version: $GO_VERSION"

URL="https://go.dev/dl/${GO_VERSION}.${OS}-${ARCH}.tar.gz"
wget "$URL"

echo "Downloaded ${GO_VERSION}.linux-amd64.tar.gz"

tar -C . -xzf "${GO_VERSION}.${OS}-${ARCH}.tar.gz"

cp -r ./go ~/Documents/apps/go

rm -r go
rm "${GO_VERSION}.${OS}-${ARCH}.tar.gz"


# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh


###########################
## SETTING UP GIT CONFIG ##
###########################
git config --global user.name "Gareth Becker" 
git config --global user.email "beckergareth38@gmail.com"


##################
## Setup docker ##
##################


###############
## Setup ZSH ##
###############
bash zsh.sh