{
  config,
  pkgs,
  ...
}: {
  programs.thefuck = {
    enable = true;
    package = pkgs.thefuck;
    enableBashIntegration = true;
  };
}
