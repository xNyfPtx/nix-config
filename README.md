
# About

This repo contains my NixOS configuration. It is still in progress as I am still learning about NixOS. 

# Usage

To use this config in NixOS, clone the repo by running

```bash
git clone https://github.com/xNyfPtx/nix-config.git
```

Then install the necessary dependencies by running

```bash
sudo nixos-rebuild switch --flake .#host
```

That's it! You can run commands from `justfile` also.


