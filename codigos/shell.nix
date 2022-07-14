{ sources ? import ./nix/sources.nix }:
with import sources.nixpkgs {
  overlays = [
    (import (builtins.fetchTarball https://github.com/AtilaSaraiva/myNixPythonPackages/archive/main.tar.gz))
  ];
};

let
  my-python-packages = python-packages: with python-packages; [
    numpy
    matplotlib
    # other python packages you want
  ];
  python-with-my-packages = python3.withPackages my-python-packages;
in
mkShell {
  buildInputs = [
    python-with-my-packages
    gfortran
    fortran-fpm
    notepadqq
  ];
}
