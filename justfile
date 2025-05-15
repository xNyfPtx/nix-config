build:
  sudo nixos-rebuild switch --flake .#host

deploy:
  sudo nixos-rebuild switch --flake .#host 
  git switch main
  git add .
  git commit -m "commit"
  git push

push:
  git add .
  git commit -m "commit"
  git push

commit:
  git add .
  git commit -m "commit"

update:
  nix flake update
