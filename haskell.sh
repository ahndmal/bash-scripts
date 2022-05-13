echo "...Installing Haskell tools..."
curl --proto '=https' --tlsv1.2 -sSf https://get-ghcup.haskell.org | sh

/*
To start a simple repl, run:
  ghci

To start a new haskell project in the current directory, run:
  cabal init --interactive

To install other GHC versions and tools, run:
  ghcup tui

If you are new to Haskell, check out https://www.haskell.org/ghcup/steps/

*/
