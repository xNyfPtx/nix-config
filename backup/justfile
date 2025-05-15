build:
  sudo nixos-rebuild switch --flake .#host

deploy:
  sudo nixos-rebuild switch --flake .#host && git add . && git commit -m "commit" && git push 

push:
  git add . && git commit -m "commit" && git push 

rollback:
  git checkout HEAD^1

unrollback:
  git checkout main

update:
  nix flake update
