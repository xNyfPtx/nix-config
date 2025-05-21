build:
  sudo nixos-rebuild switch --flake .#host --show-trace --print-build-logs --verbose

commit:
  git add .
  git commit -m "commit"

deploy:
  sudo nixos-rebuild switch --flake .#host  --show-trace --print-build-logs --verbose
  git add .
  git commit -m "commit"
  git push

push:
  git add .
  git commit -m "commit"
  git push

update:
  nix flake update
