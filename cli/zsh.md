# Oh my zsh.
<p align="center"><img src="https://s3.amazonaws.com/ohmyzsh/oh-my-zsh-logo.png" alt="Oh My Zsh"></p>

## Install ZSH.
```
sudo apt install zsh-autosuggestions zsh-syntax-highlighting zsh
```

## Install Oh my ZSH.
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Install plugins.
 - autosuggesions plugin
 
	`git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions`
	
 - zsh-syntax-highlighting plugin
 
	`git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting`
	
 - zsh-fast-syntax-highlighting plugin
 
	`git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting`
	
 - zsh-autocomplete plugin
	
	`git clone --depth 1 -- https://github.com/marlonrichert/zsh-autocomplete.git $ZSH_CUSTOM/plugins/zsh-autocomplete`
	
## Enable plugins by adding them to .zshrc.
 - Open .zshrc
	
	`nvim ~/.zshrc`
	
 -  Find the line which says `plugins=(git)`.
	
 -  Replace that line with
	`plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete)`
	
## References

 - [Oh my ZSH](https://github.com/ohmyzsh/ohmyzsh)
 - [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
 - [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
 - [zsh-fast-syntax-highlighting](https://github.com/zdharma/fast-syntax-highlighting)
 - [zsh-autocomplete](https://github.com/marlonrichert/zsh-autocomplete)

## Shell setup (macOS & Linux)

    Fish shell
    Fisher - Plugin manager
    Tide - Shell theme. Use version 5: fisher install ilancosman/tide@v5
    Nerd fonts - Powerline-patched fonts. I use Hack.
    z for fish - Directory jumping
    Eza - ls replacement
    peco - Interactive filtering

## PowerShell setup (Windows)

   - Scoop - A command-line installer
   - Git for Windows
   - Oh My Posh - Prompt theme engine
   - Terminal Icons - Folder and file icons
   - PSReadLine - Cmdlets for customizing the editing environment, used for autocompletion
   - z - Directory jumper
   - PSFzf - Fuzzy finder
