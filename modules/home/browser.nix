{ inputs, pkgs, ... }:
{
  imports = [ inputs.zen-browser.homeModules.beta ];

  programs.zen-browser = {
    enable = true;
    policies = {
      ExtensionSettings = {
        # uBlock Origin
        "uBlock0@raymondhill.net" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        };
      };
      # Disable Firefox's built-in tracking protection since uBlock handles it
      DisableFirefoxStudies = true;
      DisablePocket = true;
      DisableTelemetry = true;
      DontCheckDefaultBrowser = true;
      
      # Restore previous session on startup
      Preferences = {
        "browser.startup.page" = {
          Value = 3;
          Status = "locked";
        };
        "browser.sessionstore.persist_closed_tabs_between_sessions" = {
          Value = true;
          Status = "locked";
        };
        "browser.sessionstore.closedTabsFromAllWindows" = {
          Value = true;
          Status = "locked";
        };
        "browser.sessionstore.closedTabsFromClosedWindows" = {
          Value = true;
          Status = "locked";
        };
      };
    };
  };

  xdg.mimeApps =
    let
      value =
        let
          system = pkgs.stdenv.hostPlatform.system;
          zen-browser = inputs.zen-browser.packages.${system}.beta;
        in
        zen-browser.meta.desktopFileName;

      associations = builtins.listToAttrs (
        map (name: { inherit name value; }) [
          "application/x-extension-shtml"
          "application/x-extension-xhtml"
          "application/x-extension-html"
          "application/x-extension-xht"
          "application/x-extension-htm"
          "x-scheme-handler/unknown"
          "x-scheme-handler/mailto"
          "x-scheme-handler/chrome"
          "x-scheme-handler/about"
          "x-scheme-handler/https"
          "x-scheme-handler/http"
          "application/xhtml+xml"
          "application/json"
          "text/html"
        ]
      );
    in
    {
      associations.added = associations;
      defaultApplications = associations;
    };
}
