{
  config,
  pkgs,
  ...
}: {
  networking.hostName = "host";
  networking.networkmanager = {
    enable = true;
    ethernet.macAddress = "random";
    wifi.macAddress = "random";
  };
}
