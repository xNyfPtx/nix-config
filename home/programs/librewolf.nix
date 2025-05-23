{ config, pkgs, ... }:
{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;
    policies = {
      Cookies = {
        "Allow" = [
	  "https://addy.io"
          "https://element.io"
	  "https://discord.com"
	  "https://facebook.com"
          "https://frontendmentor.io"
          "https://github.com"
	  "https://lemmy.cafe"
	  "https://mastodon.social"
	  "https://proton.me"
        ];
        "Locked" = true;
      };
      DisableBuiltinPDFViewer = true;
      DisableTelemetry = true;
      DisableFirefoxStudies = true;
      ExtensionSettings = {
        # Catpuccin Mocha - Lavender
        "{8446b178-c865-4f5c-8ccc-1d7887811ae3}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/3990315/latest.xpi";
          installation_mode = "force_installed";
	};
        # Redirector 
        "redirector@einaregilsson.com" = {
	  # I got the extension file from this pull request: https://github.com/einaregilsson/Redirector/pull/399
	  # This pull request adds support for the policies.json file to be able to configure it inside NixOS.
	  # The pull request hasn't been merged yet as of May 20, 2025 so I had to clone the repository and edit the files changed in the pull request to the repository.
	  # After I cloned the repository, I ran build.py inside via python3
	  # nix-shell -p python3 --run "python3 build.py"
	  # There will a be a folder named `build`. Inside it is the extension files, the one I used is `redirector-firefox.xpi` because I use Firefox.
	  # Note that since you built the extension manually, it will be quite suspicious to Firefox as it has no signature. THIS IS NORMAL!
          install_url = "file:///home/user/nix-config/dotfiles/librewolf/redirector-firefox.xpi";
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
      };
      FirefoxHome = {
        "Search" = false;
      };
      HardwareAcceleration = false;
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
	"layers.acceleration.disabled"  = true; # fuck fingerprinting
        "places.history.enabled" = "false";
        "privacy.resistFingerprinting" = true;
        "privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts" = true;
	"privacy.resistFingerprinting.exemptedDomains" = ["images.google.com"];
	# To install Redirector
	"xpinstall.signatures.required" = false;
      };
      "3rdparty".Extensions."redirector@einaregilsson.com".redirects = 
        let redirect = inputUrl: outputUrl: {
	  description = "${inputUrl} to ${outputUrl}";
	  exampleUrl = "https://${inputUrl}/example";
	  exampleResult = "https://${outputUrl}/example";
	  error = null;
	  includePattern = "https://*${inputUrl}/*";
	  excludePattern = "";
	  patternDesc = "Any string after ${inputUrl} redirects to ${outputUrl}";
	  redirectUrl = "https://${outputUrl}/$2";
	  patternType = "W";
	  processMatches = "noProcessing";
	  disabled = false;
	  grouped = false;
	  appliesTo = [
	    "main_frame"
	    "other"
	  ];
	};
      in [
	  (redirect "fandom.com" "breezewiki.com")
	  (redirect "geeksforgeeks.org" "nn.vern.cc")
	  (redirect "genius.com" "dm.vern.cc")
	  (redirect "imgur.com" "rimgo.pussthecat.org")
	  (redirect "medium.com" "scribe.rip")
	  (redirect "reddit.com" "red.ngn.tf")
	  (redirect "stackoverflow.com" "code.whatever.social")
	  (redirect "twitter.com" "nitter.net")
	  (redirect "wikipedia.org" "wiki.froth.zone")
	  (redirect "x.com" "nitter.net")
	  (redirect "youtube.com" "inv.nadeko.net")
      ];
    };
  };
}

