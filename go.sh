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

cp -r ./go ~/Documents/apps

rm -r go
rm "${GO_VERSION}.${OS}-${ARCH}.tar.gz"
