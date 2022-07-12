nixportable='nix-portable'
if [ ! -f $nixportable ]; then
    wget https://github.com/DavHau/nix-portable/releases/download/v009/nix-portable
    chmod +x nix-portable
fi
./nix-portable nix-shell
