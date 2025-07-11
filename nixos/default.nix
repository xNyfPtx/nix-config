{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./autologin.nix
    ./boot.nix
    ./hardware-configuration.nix
    ./i18n.nix
    ./keyd.nix
    ./networking.nix
    ./nix.nix
    ./pipewire.nix
    ./users.nix
    ./xserver.nix
  ];

  system.stateVersion = "25.05";
}
