build:
  sudo nixos-rebuild switch --flake .#host --show-trace --print-build-logs --verbose

branch branchName: 
  git branch {{branchName}}
  git switch {{branchName}}

commit files commitMessage:
  git add {{files}}
  git commit -m "{{commitMessage}}"

deploy files commitMessage:
  sudo nixos-rebuild switch --flake .#host  --show-trace --print-build-logs --verbose
  git add {{files}}
  git commit -m "{{commitMessage}}"
  git push

update:
  nix flake update
