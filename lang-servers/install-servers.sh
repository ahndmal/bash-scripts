
# https://langserver.org/

## Helix - https://docs.helix-editor.com/lang-support.html

echo ">> Installing language servers for Helix / Nvim \r\n"

############################### Java
### https://github.com/eclipse-jdtls/eclipse.jdt.ls
### https://download.eclipse.org/jdtls/milestones/?d

wget https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.36.0/jdt-language-server-1.36.0-202405301306.tar.gz
tar -xvf jdt-language-server-1.36.0-202405301306.tar.gz
cd jdt-language-server-1.9.0-202203031534
.bin//jdtls -configuration ~/.cache/jdtls -data .

############################### BASH
# https://github.com/bash-lsp/bash-language-server
npm i -g bash-language-server
bash-language-server start

############################### TS/JS
npm install -g typescript-language-server typescript
typescript-language-server --stdio

############################### Kotlin
# Kotlin (https://github.com/fwcd/kotlin-language-server)


############################### Python (https://github.com/python-lsp/python-lsp-server)
sudo apt-get install python3-pylsp
pylsp

############################### C
sudo apt-get install clangd-12

############################### Clojure (https://clojure-lsp.io/installation/)
sudo bash < <(curl -s https://raw.githubusercontent.com/clojure-lsp/clojure-lsp/master/install)

############################### Haskell (https://haskell-language-server.readthedocs.io/en/latest/installation.html)
ghcup install hls

############################### Zig (https://github.com/zigtools/zls)
git clone https://github.com/zigtools/zls
cd zls
zig build -Doptimize=ReleaseSafe

