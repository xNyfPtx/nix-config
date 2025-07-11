{
  config,
  pkgs,
  ...
}: {
  services.xserver = {
    enable = true;
    displayManager = {
      gdm.enable = true;
      autoLogin = {
        enable = true;
        user = "user";
      };
    };
    xkb = {
      layout = "us";
      variant = "";
    };
    desktopManager.gnome.enable = true;
  };
}
