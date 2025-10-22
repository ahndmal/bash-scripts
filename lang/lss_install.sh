# https://github.com/helix-editor/helix/wiki/Language-Server-Configurations

mkdir ~/tools/lss

### Java (jdtls)
wget -P ~/tools/lss https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.48.0/jdt-language-server-1.48.0-202506271502.tar.gz
tar -xvf jdt-language-server-1.48.0-202506271502.tar.gz

### Groovy (https://github.com/GroovyLanguageServer/groovy-language-server)

git clone https://github.com/GroovyLanguageServer/groovy-language-server.git

mv groovy-language-server ~/tools/lss

cd ~/tools/lss/groovy-language-server

./gradlew build

#java -jar groovy-language-server-all.jar

### Kotlin
git clone https://github.com/fwcd/kotlin-language-server.git

mv kotlin-language-server ~/tools/lss

cd ~/tools/lss/kotlin-language-server

./gradlew :server:installDist

### BASH
npm i -g bash-language-server

# CSS
npm i -g vscode-langservers-extracted

npm install -g dockerfile-language-server-nodejs

# GO
go install golang.org/x/tools/gopls@latest                               # LSP
go install github.com/go-delve/delve/cmd/dlv@latest                      # Debugger
go install golang.org/x/tools/cmd/goimports@latest                       # Formatter
go install github.com/nametake/golangci-lint-langserver@latest           # Linter
go install github.com/golangci/golangci-lint/v2/cmd/golangci-lint@latest # Linter cli

# HTML
npm i -g vscode-langservers-extracted
