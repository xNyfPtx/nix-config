build:
  sudo nixos-rebuild switch --flake .#host --show-trace --print-build-logs --verbose

update:
  nix flake update
