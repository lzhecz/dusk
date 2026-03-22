# Drop this file into your dusk clone directory.
# Then run:  nix-shell
# Once inside the shell, `make` will work normally.
# To rebuild later: nix-shell --run make

{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    # Build tools
    gnumake
    gcc
    pkg-config

    # Core X11
    xorg.libX11
    xorg.libxcb
    xorg.libXinerama
    xorg.libXft
    xorg.libXres

    # Image support
    imlib2

    # JSON / IPC
    yajl

    # Config-file parsing
    libconfig

    # DBus
    dbus

    # Font stack
    freetype
    fontconfig

    # Optional but recommended
    xorg.libXfixes
    xorg.libXi
    fribidi
  ];
}
