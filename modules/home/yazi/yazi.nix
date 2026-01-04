{ pkgs, ... }:
{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;

    settings = {
      mgr = {
        show_hidden = false;
        show_symlink = true;
        sort_by = "mtime";
        sort_sensitive = false;
        sort_reverse = false;
        sort_dir_first = true;
        linemode = "size";
      };

      preview = {
        image_filter = "lanczos3";
        image_quality = 90;
        max_width = 600;
        max_height = 900;
        tab_size = 2;
      };

      opener = {
        edit = [
          { run = ''micro "$@"''; block = true; }
        ];
        open = [
          { run = ''xdg-open "$@"''; desc = "Open"; }
        ];
        reveal = [
          { run = ''nemo "$@"''; desc = "Reveal in file manager"; }
        ];
      };

      open = {
        rules = [
          { name = "*/"; use = "reveal"; }
          { mime = "text/*"; use = "edit"; }
          { mime = "application/json"; use = "edit"; }
          { mime = "*/javascript"; use = "edit"; }
          { mime = "*"; use = "open"; }
        ];
      };
    };

    theme = {
      mgr = {
        cwd = { fg = "#89dceb"; };

        # Hovered
        hovered = { reversed = true; };
        preview_hovered = { underline = true; };

        # Find
        find_keyword = { fg = "#f9e2af"; italic = true; };
        find_position = { fg = "#fab387"; bg = "reset"; italic = true; };

        # Marker
        marker_copied = { fg = "#a6e3a1"; bg = "#a6e3a1"; };
        marker_cut = { fg = "#f38ba8"; bg = "#f38ba8"; };
        marker_marked = { fg = "#89dceb"; bg = "#89dceb"; };
        marker_selected = { fg = "#f9e2af"; bg = "#f9e2af"; };

        # Tab
        tab_active = { fg = "#1e1e2e"; bg = "#cba6f7"; };
        tab_inactive = { fg = "#bac2de"; bg = "#313244"; };
        tab_width = 1;

        # Count
        count_copied = { fg = "#1e1e2e"; bg = "#a6e3a1"; };
        count_cut = { fg = "#1e1e2e"; bg = "#f38ba8"; };
        count_selected = { fg = "#1e1e2e"; bg = "#f9e2af"; };

        # Border
        border_symbol = "│";
        border_style = { fg = "#585b70"; };

        # Highlighting
        syntect_theme = "~/.config/yazi/catppuccin-mocha.tmTheme";
      };

      status = {
        separator_open = "";
        separator_close = "";
        separator_style = { fg = "#313244"; bg = "#313244"; };

        # Mode
        mode_normal = { fg = "#1e1e2e"; bg = "#89b4fa"; bold = true; };
        mode_select = { fg = "#1e1e2e"; bg = "#a6e3a1"; bold = true; };
        mode_unset = { fg = "#1e1e2e"; bg = "#f5c2e7"; bold = true; };

        # Progress
        progress_label = { bold = true; };
        progress_normal = { fg = "#89b4fa"; bg = "#313244"; };
        progress_error = { fg = "#f38ba8"; bg = "#313244"; };

        # Permissions
        permissions_t = { fg = "#a6e3a1"; };
        permissions_r = { fg = "#f9e2af"; };
        permissions_w = { fg = "#f38ba8"; };
        permissions_x = { fg = "#89b4fa"; };
        permissions_s = { fg = "#585b70"; };
      };

      input = {
        border = { fg = "#cba6f7"; };
        title = {};
        value = {};
        selected = { reversed = true; };
      };

      select = {
        border = { fg = "#cba6f7"; };
        active = { fg = "#fab387"; };
        inactive = {};
      };

      tasks = {
        border = { fg = "#cba6f7"; };
        title = {};
        hovered = { underline = true; };
      };

      which = {
        mask = { bg = "#1e1e2e"; };
        cand = { fg = "#89b4fa"; };
        rest = { fg = "#6c7086"; };
        desc = { fg = "#fab387"; };
        separator = "  ";
        separator_style = { fg = "#45475a"; };
      };

      help = {
        on = { fg = "#89b4fa"; };
        run = { fg = "#fab387"; };
        desc = { fg = "#6c7086"; };
        hovered = { bg = "#45475a"; bold = true; };
        footer = { fg = "#313244"; bg = "#bac2de"; };
      };

      filetype = {
        rules = [
          # Images
          { mime = "image/*"; fg = "#89dceb"; }

          # Videos
          { mime = "video/*"; fg = "#f9e2af"; }
          { mime = "audio/*"; fg = "#f9e2af"; }

          # Archives
          { mime = "application/zip"; fg = "#fab387"; }
          { mime = "application/gzip"; fg = "#fab387"; }
          { mime = "application/x-tar"; fg = "#fab387"; }
          { mime = "application/x-bzip"; fg = "#fab387"; }
          { mime = "application/x-bzip2"; fg = "#fab387"; }
          { mime = "application/x-7z-compressed"; fg = "#fab387"; }
          { mime = "application/x-rar"; fg = "#fab387"; }

          # Fallback
          { name = "*"; fg = "#cdd6f4"; }
          { name = "*/"; fg = "#89b4fa"; }
        ];
      };
    };

    keymap = {
      mgr.prepend_keymap = [
        { on = [ "l" ]; run = "plugin --sync smart-enter"; desc = "Enter directory or open file"; }
        { on = [ "<Enter>" ]; run = "plugin --sync smart-enter"; desc = "Enter directory or open file"; }
      ];
    };

    plugins = {
      smart-enter = ./plugins/smart-enter.yazi;
    };
  };

  # Install required tools for previews
  home.packages = with pkgs; [
    exiftool      # for metadata
    fd            # faster find
    ripgrep       # faster grep
    fzf           # fuzzy finder
    zoxide        # directory jumper
    poppler-utils # for PDF previews
    ffmpegthumbnailer # for video thumbnails
    imagemagick   # for image processing
  ];

  # Yazi theme file for syntax highlighting
  xdg.configFile."yazi/catppuccin-mocha.tmTheme".text = ''
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>name</key>
      <string>Catppuccin Mocha</string>
      <key>settings</key>
      <array>
        <dict>
          <key>settings</key>
          <dict>
            <key>background</key>
            <string>#1e1e2e</string>
            <key>foreground</key>
            <string>#cdd6f4</string>
          </dict>
        </dict>
      </array>
    </dict>
    </plist>
  '';
}
