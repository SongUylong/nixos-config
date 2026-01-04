{ ... }:
let
  custom = {
    font = "Maple Mono";
    font_size = "14px";
    font_weight = "bold";
    text_color = "#cdd6f4"; # Catppuccin Mocha text
    background_0 = "#1e1e2e"; # Catppuccin Mocha base
    background_1 = "#181825"; # Catppuccin Mocha mantle
    border_color = "#89b4fa"; # Catppuccin Mocha blue
    red = "#f38ba8";
    green = "#a6e3a1";
    yellow = "#f9e2af";
    blue = "#89b4fa";
    magenta = "#cba6f7";
    cyan = "#94e2d5";
    orange = "#fab387";
    orange_bright = "#fab387";
    opacity = "1";
    indicator_height = "2px";
  };
in
{
  programs.waybar.style = with custom; ''
    * {
      border: none;
      border-radius: 0px;
      padding: 0;
      margin: 0;
      font-family: ${font};
      font-weight: ${font_weight};
      opacity: ${opacity};
      font-size: ${font_size};
    }

    window#waybar {
      background: ${background_1};
      border-bottom: 1px solid ${border_color};
    }

    tooltip {
      background: ${background_1};
      border: 1px solid ${border_color};
    }
    tooltip label {
      margin: 5px;
      color: ${text_color};
    }

    #workspaces {
      padding-left: 15px;
    }
    #workspaces button {
      color: ${yellow};
      padding-left:  5px;
      padding-right: 5px;
      margin-right: 10px;
    }
    #workspaces button.empty {
      color: ${text_color};
    }
    #workspaces button.active {
      color: ${orange_bright};
    }

    #clock {
      color: ${text_color};
    }

    #tray {
      margin-left: 10px;
      color: ${text_color};
    }
    #tray menu {
      background: ${background_1};
      border: 1px solid ${border_color};
      padding: 8px;
    }
    #tray menuitem {
      padding: 1px;
    }

    #pulseaudio, #network, #cpu, #memory, #disk, #battery, #bluetooth, #language, #custom-notification, #custom-power-menu, #custom-language {
      padding-left: 5px;
      padding-right: 5px;
      margin-right: 10px;
      color: ${text_color};
    }

    #pulseaudio, #custom-language, #custom-notification {
      margin-left: 15px;
    }

    #bluetooth {
      margin-right: 15px;
    }

    #custom-power-menu {
      padding-right: 2px;
      margin-right: 5px;
    }

    #custom-launcher {
      font-size: 16px;
      color: ${text_color};
      font-weight: bold;
      margin-left: 15px;
      padding-right: 10px;
    }
  '';
}
