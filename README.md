# bash-scripts

Some basic BASH scripts for installation and configuration of tools/programs for cloud programming (usually Ubuntu / JVM related).

## SSH
https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Generate SSH: ``` ssh-keygen -t ed25519 -C "quadr988@gmail.com" ```

## Fonts
- FiraCode
    ``` wget https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip
        sudo apt install -y fonts-firacode
    ```
- Powerline (https://github.com/powerline/fonts) 

## Tools

- Oh My ZSH (https://ohmyz.sh/)
- Helix editor (https://docs.helix-editor.com/keymap.html)
- nvim
- docker (https://docs.docker.com/engine/install/ubuntu/)
- snapd
- 

### Atlassian
- https://marketplace.atlassian.com/apps/1210993/atlassian-plugin-sdk-tgz?hosting=server&tab=overview

### Colored CLI
- Exa (sudo apt install exa)
- Colours (https://github.com/athityakumar/colorls?tab=readme-ov-file#installation)

### CMake

- https://cmake.org/

### Java

- SDKMAN
- JDTLS
  - https://github.com/eclipse-jdtls/eclipse.jdt.ls
  - https://download.eclipse.org/jdtls/milestones/?d 
     ```bash wget https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.9.0/jdt-language-server-1.9.0-202203031534.tar.gz ```

### Node

- nvm (https://github.com/nvm-sh/nvm)

### Python
- pyenv (https://github.com/pyenv/pyenv)
- 

### Go

- https://go.dev/dl/

### Rust
- https://www.rust-lang.org/tools/install
```bash curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh ```

### WASM

- WABT [https://github.com/WebAssembly/wabt](https://github.com/WebAssembly/wabt#cloning)


## JB toolbox

https://github.com/AppImage/AppImageKit/wiki/FUSE

```
sudo add-apt-repository universe
sudo apt install libfuse2
```
