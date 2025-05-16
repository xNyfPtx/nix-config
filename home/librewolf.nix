{ config, pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;
    profiles.user.search = {
      force = true;
      default = "DuckDuckGo";
      privateDefault = "DuckDuckGo";
      engines = {
        "NixOS Wiki" = {
          urls = [{ template = "https://wiki.nixos.org/index.php?search={searchTerms}"; }];
          definedAliases = [ "@nw" ];
        };
      };
    };
    policies = {
      Cookies = {
        "Allow" = [
	  "https://addy.io"
          "https://element.io"
	  "https://discord.com"
	  "https://facebook.com"
          "https://frontendmentor.io"
          "https://github.com"
	  "https://mastodon.social"
	  "https://proton.me"
        ];
        "Locked" = true;
      };
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      FirefoxHome = {
        "Search" = false;
      };
      Preferences = {
        "browser.preferences.defaultPerformanceSettings.enabled" = false;
        "browser.startup.homepage" = "about:home";
        "browser.toolbar.bookmarks.visibility" = "newtab";
        "browser.urlbar.suggest.bookmark" = false;
        "browser.urlbar.suggest.engines" = false;
        "browser.urlbar.suggest.history" = false;
        "browser.urlbar.suggest.openpage" = false;
        "browser.urlbar.suggest.recentsearches" = false;
        "browser.urlbar.suggest.topsites" = false;
	"browser.warnOnQuit" = false;
        "browser.warnOnQuitShortcut" = false;
        "places.history.enabled" = "false";
        "privacy.resistFingerprinting" = true;
        "privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts" = true;
	"privacy.resistFingerprinting.exemptedDomains" = ["images.google.com"];
      };
      ExtensionSettings = {
        # LibRedirect
        "7esoorv3@alefvanoon.anonaddy.me" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/libredirect/latest.xpi";
          installation_mode = "force_installed";
        };
        # Tridactyl
        "tridactyl.vim@cmcaine.co.uk" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/tridactyl-vim/latest.xpi";
          installation_mode = "force_installed";
        };
        # uBlock Origin
        "uBlock0@raymondhill.net" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
          installation_mode = "force_installed";
        };
        # Catpuccin Mocha - Lavender
        "{8446b178-c865-4f5c-8ccc-1d7887811ae3}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/3990315/latest.xpi";
          installation_mode = "force_installed";
	};
      };
    };
  };
}

