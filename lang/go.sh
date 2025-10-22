# Install go and tools
## https://go.dev/dl/

wget https://go.dev/dl/go1.24.5.linux-amd64.tar.gz 
mv go1.22.4.linux-amd64.tar.gz ~/tools
tar -xvf go1.22.4.linux-amd64.tar.gz

export GOPATH=~/tools/go

echo "export GOPATH=~/tools/go" >> ~/.zshrc

source ~/.zshrc

go env -w GOPATH="~/tools/go"

## gopls
go install golang.org/x/tools/gopls@latest
