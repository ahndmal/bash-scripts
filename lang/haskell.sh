echo "...Installing Haskell tools..."
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh
ghcup install ghc 8.10.4
ghcup set ghc 8.10.4
ghcup install cabal 3.2.0.0

#  cabal init --interactive

#To install other GHC versions and tools, run:
#  ghcup tui

#If you are new to Haskell, check out https://www.haskell.org/ghcup/steps/
