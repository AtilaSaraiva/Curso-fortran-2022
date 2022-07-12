{ sources ? import ./nix/sources.nix }:
with import sources.nixpkgs {
  overlays = [
    (import (builtins.fetchTarball https://github.com/AtilaSaraiva/myNixPythonPackages/archive/main.tar.gz))
  ];
};

mkShell {
  buildInputs = [
    gfortran
    fortran-fpm
    notepadqq
  ];
}
