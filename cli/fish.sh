### https://travisbrady.github.io/posts/moving-to-fish-shell/

# 1. Install fish

brew install fish
fish --version

# 2. Install oh-my-fish aka omf

curl -L https://get.oh-my.fish | fish

# 3. Install fisher

curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher

# 4. Install fzf.fish

fisher install PatrickF1/fzf.fish

# 5. Install tide (like powerline10k)

tide configure

