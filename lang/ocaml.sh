# https://ocaml.org/docs/up-and-running#first-steps-with-ocaml

bash -c "sh <(curl -fsSL https://raw.githubusercontent.com/ocaml/opam/master/shell/install.sh)"
opam switch create 4.14.0
opam install dune merlin ocaml-lsp-server odoc ocamlformat utop dune-release
opam user-setup install
