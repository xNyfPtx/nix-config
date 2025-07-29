build:
  sudo nixos-rebuild switch --flake .#host --show-trace --print-build-logs --verbose

clean:
  sudo nix profile wipe-history --older-than 7d --profile /nix/var/nix/profiles/system
  sudo nix-collect-garbage --delete-old
  nix-collect-garbage --delete-old

update:
  nix flake update
