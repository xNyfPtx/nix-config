{
  config,
  pkgs,
  ...
}: {
  users.users.user = {
    isNormalUser = true;
    description = "user";
    extraGroups = ["networkmanager" "wheel"];
  };
}
