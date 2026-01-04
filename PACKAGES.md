# NixOS Configuration - Installed Packages

This document lists all packages and applications installed in this NixOS configuration with usage examples.

## CLI Tools & Core Utilities

### Better Core Utils

Modern replacements for basic Unix commands with enhanced features and better UX.

- **duf** - Disk usage/free utility with colors and graphs (better than `df`)

  ```bash
  duf              # Show all disks with colorful output
  duf /home        # Show specific mount point
  ```

- **eza** - Modern `ls` replacement with icons, colors, and git integration

  ```bash
  eza              # List files with colors
  l                # Alias: detailed list with icons
  tree             # Alias: tree view
  ```

- **fd** - Fast and user-friendly `find` alternative

  ```bash
  fd pattern       # Find files matching pattern
  fd -e js         # Find all .js files
  fd -H .config    # Include hidden files
  ```

- **gping** - Ping command with live graph visualization

  ```bash
  gping google.com         # Ping with live graph
  gping 1.1.1.1 8.8.8.8   # Ping multiple hosts
  ```

- **gtrash** - Safe `rm` replacement that moves files to system trash

  ```bash
  tt file.txt      # Alias: move to trash (safer than rm)
  gtrash put file  # Explicitly trash a file
  ```

- **hexyl** - Beautiful hex viewer with color-coded output for binary files

  ```bash
  hexyl binary.bin      # View binary in hex
  hexyl /dev/urandom | head -n 20  # View random data
  ```

- **man-pages** - Additional manual pages for system documentation

  ```bash
  man printf       # View man page with batman (colorized)
  ```

- **ncdu** - Interactive disk space analyzer (ncurses du)

  ```bash
  ncdu             # Analyze current directory
  space            # Alias for ncdu
  ncdu /home       # Analyze specific directory
  ```

- **ripgrep** - Ultra-fast text search tool (better than `grep`)

  ```bash
  rg "pattern"         # Search for pattern
  rg -i "case"         # Case-insensitive search
  rg -t js "import"    # Search only in .js files
  ```

- **tldr** - Simplified, community-driven man pages with practical examples
  ```bash
  tldr tar         # Quick examples for tar command
  tldr git-commit  # Git commit examples
  ```

### CLI Tools

Productivity and utility tools for command-line workflows.

- **aoc-cli** - Advent of Code helper for downloading inputs and submitting solutions

  ```bash
  aoc download     # Download today's puzzle
  aoc submit 1 42  # Submit answer for part 1
  ```

- **asciinema** - Record and share terminal sessions as lightweight videos

  ```bash
  asciinema rec    # Start recording
  asciinema play recording.cast  # Play recording
  ```

- **asciinema-agg** - Convert asciinema recordings to animated GIFs

  ```bash
  agg recording.cast output.gif  # Convert to GIF
  ```

- **binsider** - Analyze and inspect binary files

  ```bash
  binsider /bin/ls     # Analyze binary structure
  ```

- **bitwise** - Bit/hex manipulation tool for programmers and reverse engineers

  ```bash
  bitwise          # Launch interactive calculator
  ```

- **broot** - Tree-based directory navigator with fuzzy search

  ```bash
  br               # Launch broot
  br -s            # Show sizes
  ```

- **caligula** - User-friendly TUI for creating disk images

  ```bash
  caligula         # Launch TUI for disk imaging
  ```

- **hyperfine** - Command-line benchmarking tool for comparing performance

  ```bash
  hyperfine 'command1' 'command2'  # Benchmark two commands
  hyperfine --warmup 3 'ls -la'    # Warmup before benchmark
  ```

- **pastel** - Generate, analyze, and manipulate colors in the terminal

  ```bash
  pastel color "#ff00ff"      # Show color info
  pastel random               # Generate random color
  pastel gradient red blue    # Color gradient
  ```

- **scooter** - Interactive find and replace for terminal workflows

  ```bash
  scooter          # Launch interactive find/replace
  ```

- **swappy** - Wayland screenshot annotation and editing tool

  ```bash
  swappy -f screenshot.png    # Edit screenshot
  ```

- **tdf** - View PDF files directly in the terminal

  ```bash
  tdf document.pdf     # View PDF in terminal
  pdf document.pdf     # Alias
  ```

- **tokei** - Fast code statistics - count lines of code by language

  ```bash
  tokei            # Count lines in current dir
  tokei ~/project  # Count lines in specific project
  ```

- **translate-shell** - Google Translate in the command line

  ```bash
  trans "hello"            # Translate to your language
  trans :fr "hello"        # Translate to French
  trans -b en:es "hello"   # Brief output
  ```

- **woomer** - Screen magnifier/zoomer for Wayland

  ```bash
  woomer           # Launch magnifier
  ```

- **yt-dlp-light** - Download videos and audio from YouTube and other sites
  ```bash
  yt-dlp "URL"             # Download video
  yt-dlp -x "URL"          # Extract audio only
  yt-dlp -f best "URL"     # Best quality
  ```

### TUI Applications

Terminal User Interface apps for various tasks.

- **epy** - Terminal ebook reader supporting EPUB, MOBI, AZW, and more

  ```bash
  epy book.epub    # Read ebook in terminal
  ```

- **gtt** - Google Translate with beautiful terminal interface

  ```bash
  gtt              # Launch interactive translator
  ```

- **programmer-calculator** - Calculator with hex, binary, octal for programmers
  ```bash
  programmer-calculator    # Launch calculator TUI
  ```

### Monitoring & System Info

System resource monitoring and information display tools.

- **btop** - Beautiful resource monitor with mouse support and themes

  ```bash
  btop             # Launch resource monitor
  ```

- **htop** - Interactive process viewer and system monitor

  ```bash
  htop             # Launch process viewer
  ```

- **nvtop** (Intel) - GPU monitoring and statistics for Intel GPUs

  ```bash
  nvtop            # Monitor GPU usage
  ```

- **onefetch** - Git repository information fetch tool (like neofetch for repos)

  ```bash
  onefetch         # Show repo info in current directory
  onefetch ~/project   # Show specific repo info
  ```

- **wavemon** - Wireless network device monitoring with signal strength display

  ```bash
  wavemon          # Monitor WiFi connections
  ```

- **fastfetch** - Fast system information tool with customizable output
  ```bash
  fastfetch        # Display system info
  ```

### Fun & Screensavers

Eye candy and entertainment for your terminal.

- **asciiquarium-transparent** - Animated aquarium with fish swimming in ASCII art

  ```bash
  asciiquarium     # Watch the fish swim
  ```

- **cbonsai** - Generate and grow bonsai trees in your terminal

  ```bash
  cbonsai          # Grow a bonsai tree
  cbonsai -l       # Live growing animation
  ```

- **cmatrix** - Matrix-style falling characters animation

  ```bash
  cmatrix          # The Matrix screensaver
  cmatrix -b       # Bold characters
  ```

- **countryfetch** - Display country flags and information

  ```bash
  countryfetch US      # Show USA info
  ```

- **cowsay** - ASCII cow that speaks messages

  ```bash
  cowsay "Hello!"      # Cow says hello
  fortune | cowsay     # Random quote from cow
  ```

- **figlet** - Create large ASCII art text banners

  ```bash
  figlet "NixOS"       # Big text
  figlet -f slant "Cool"   # Different font
  ```

- **fortune** - Display random quotes, jokes, and wisdom

  ```bash
  fortune          # Random quote
  ```

- **lavat** - Animated lava lamp simulation

  ```bash
  lavat            # Watch the lava lamp
  ```

- **lolcat** - Rainbow colors for terminal output

  ```bash
  echo "Rainbow!" | lolcat     # Colorize text
  ls | lolcat                  # Rainbow ls output
  ```

- **pipes** - Animated pipes screensaver

  ```bash
  pipes            # Watch pipes grow
  pipes -t 5       # 5 types of pipes
  ```

- **sl** - Steam locomotive animation (typo joke for `ls`)

  ```bash
  sl               # Choo choo! (punishment for typing sl instead of ls)
  ```

- **tty-clock** - Digital clock display in terminal
  ```bash
  tty-clock -c     # Centered clock
  tty-clock -s     # With seconds
  ```

### Multimedia (CLI)

Command-line multimedia players and visualizers.

- **imv** - Lightweight image viewer for Wayland/X11

  ```bash
  imv image.png        # View image
  imv *.jpg            # View all JPGs
  ```

- **lowfi** - Lo-fi hip hop radio player for the terminal

  ```bash
  lowfi            # Listen to lo-fi beats
  ```

- **mpv** - Minimal, powerful media player (video/audio)

  ```bash
  mpv video.mp4        # Play video
  mpv song.mp3         # Play audio
  mpv --loop file      # Loop playback
  ```

- **cava** - Console audio visualizer with customizable colors
  ```bash
  cava             # Visualize currently playing audio
  ```

### System Utilities

Essential system utilities and helpers.

- **bat** - `cat` clone with syntax highlighting and git integration

  ```bash
  cat file.txt         # Alias uses bat automatically
  bat --style=plain    # Plain output without decorations
  ```

- **entr** - Run commands automatically when files change (file watcher)

  ```bash
  ls *.c | entr make       # Rebuild on file changes
  find . -name '*.py' | entr pytest  # Run tests on save
  ```

- **ffmpeg** - Complete multimedia framework for video/audio conversion

  ```bash
  ffmpeg -i video.mp4 output.mp3   # Convert video to audio
  ffmpeg -i input.mov output.mp4   # Convert formats
  ```

- **file** - Determine file type by examining contents

  ```bash
  file mystery.bin     # Identify file type
  ```

- **jq** - Command-line JSON processor and formatter

  ```bash
  cat data.json | jq '.'           # Pretty print JSON
  echo '{"key":"value"}' | jq .key # Extract value
  ```

- **killall** - Kill processes by name instead of PID

  ```bash
  killall firefox      # Kill all firefox processes
  ```

- **libnotify** - Send desktop notifications from scripts

  ```bash
  notify-send "Title" "Message"    # Show notification
  ```

- **mimeo** - Open files with default applications based on MIME type

  ```bash
  mimeo file.pdf       # Open with default PDF viewer
  ```

- **openssl** - SSL/TLS toolkit for encryption and certificates

  ```bash
  openssl rand -hex 16     # Generate random hex
  openssl s_client -connect google.com:443  # Test SSL
  ```

- **pamixer** - PulseAudio command-line mixer for volume control

  ```bash
  pamixer --get-volume     # Get current volume
  pamixer --increase 5     # Increase volume by 5%
  pamixer --toggle-mute    # Mute/unmute
  ```

- **playerctl** - Control media players via MPRIS (play/pause/next/prev)

  ```bash
  playerctl play-pause     # Toggle playback
  playerctl next           # Next track
  playerctl metadata       # Show current track info
  ```

- **poweralertd** - Battery monitoring daemon with low power alerts

  ```bash
  # Runs automatically in background
  ```

- **udiskie** - Automounter for removable media (USB drives, SD cards)

  ```bash
  # Runs automatically in background
  ```

- **unzip** - Extract files from ZIP archives

  ```bash
  unzip archive.zip        # Extract zip file
  unzip -l archive.zip     # List contents
  ```

- **wget** - Download files from the web

  ```bash
  wget https://example.com/file.zip    # Download file
  wget -c URL                          # Continue download
  ```

- **wl-clipboard** - Wayland clipboard utilities (`wl-copy`, `wl-paste`)

  ```bash
  echo "text" | wl-copy    # Copy to clipboard
  copy                     # Alias for wl-copy
  wl-paste                 # Paste from clipboard
  ```

- **xdg-utils** - Desktop integration utilities (`xdg-open`, etc.)

  ```bash
  xdg-open file.pdf        # Open with default app
  open file.pdf            # Alias
  ```

- **winetricks** - Helper script for Wine to install Windows dependencies

  ```bash
  winetricks vcrun2019     # Install Visual C++ runtime
  ```

- **wine** (Wayland Full) - Run Windows applications on Linux with Wayland support
  ```bash
  wine program.exe         # Run Windows executable
  ```

## GUI Applications

### Web Browser

- **zen-browser** - Firefox-based browser

### Multimedia

- **audacity** - Audio editor
- **audacious** - Music player
- **gimp** - Image editor
- **media-downloader** - Media download utility
- **obs-studio** - Screen recording and streaming
- **pavucontrol** - PulseAudio volume control
- **video-trimmer** - Video editing tool
- **vlc** - Media player

### Office & Productivity

- **libreoffice** - Office suite
- **gnome-calculator** - Calculator
- **obsidian** - Note-taking app

### System Utilities

- **dconf-editor** - Configuration editor
- **gnome-disk-utility** - Disk management
- **popsicle** - USB flasher
- **mission-center** - GUI resource monitor
- **zenity** - Dialog boxes
- **nemo** - File manager
- **waypaper** - Wallpaper picker GUI

### GNOME Apps

- **evince** - PDF viewer
- **file-roller** - Archive manager
- **gnome-text-editor** - Text editor

### Communication

- **webcord** - Discord client (privacy-focused)

### Game Development

- **ldtk** - Level editor
- **tiled** - Tile map editor
- **aseprite** - Pixel art editor

### Gaming

- **retroarch** - Multi-system emulator
- **\_2048** - 2048 game
- **\_2048-in-terminal** - Terminal version of 2048
- **vitetris** - Tetris clone
- **nethack** - Classic roguelike
- **crispy-doom** - Doom source port
- **sameboy** - Game Boy emulator
- **snes9x** - SNES emulator

### Terminals

- **wezterm** - GPU-accelerated terminal with multiplexer (Default)
- **ghostty** - Modern, fast terminal emulator
- **kitty** - GPU-accelerated terminal

### Music

- **spicetify** - Spotify client (customized)

## Development Tools

### Version Control

- **git** - Version control system
- **delta** - Git diff viewer
- **gh** - GitHub CLI
- **serie** - Git series manager
- **lazygit** - Terminal UI for git

### Editors & IDEs

- **neovim** - Vim-based text editor
- **micro** - Terminal text editor (nano replacement)
- **vscodium** - VS Code without Microsoft branding

### VSCodium Extensions

- **github.copilot** - AI code completion
- **github.copilot-chat** - AI assistant in the sidebar
- **nix-ide** - Nix language support
- **nix-env-selector** - Nix environment selector
- **vscode-clangd** - C/C++ language server
- **vscode-zig** - Zig language support
- **even-better-toml** - TOML language support
- **go** - Go language support
- **gruvbox** - Color theme
- **gruvbox-material-icon-theme** - Icon theme

### LSP & Formatters

- **nixd** - Nix language server
- **shfmt** - Shell script formatter
- **treefmt** - Multi-language formatter
- **nixfmt-rfc-style** - Nix code formatter

### C/C++ Development

- **gcc** - GNU Compiler Collection
- **gdb** - GNU Debugger
- **gef** - GDB Enhanced Features
- **cmake** - Build system generator
- **gnumake** - Build automation
- **valgrind** - Memory debugger
- **clang-tools** - Clang tooling (LLVM 20)

### Python Development

- **python3** - Python interpreter
- **ipython** - Interactive Python shell

### Nix Development Tools

- **nvd** - Nix package version diff tool
- **nix-du** - Nix store space analyzer
- **nix-btm** - Bottom-like monitor for Nix
- **nix-web** - Web interface for Nix store
- **nix-tree** - Browse Nix store dependencies
- **nix-melt** - Flake.lock viewer
- **nix-output-monitor** - Pretty Nix command output
- **nixtract** - Extract derivation graphs from flakes
- **nix-index** - Nix package search
- **comma** - Run programs without installing

### File Management

- **yazi** - Modern terminal file manager (Rust-based, fast and powerful)

  ```bash
  yazi             # Launch file manager
  y                # Alias
  ```

- **fzf** - Fuzzy finder
  ```bash
  fzf              # Interactive fuzzy search
  cat file | fzf   # Filter output
  ```

### Keyboard Programming

- **via** - Keyboard configurator
- **vial** - Keyboard firmware tool
- **qmk** - QMK firmware tools
- **qmk-udev-rules** - QMK USB rules

## Window Manager & Desktop Environment

### Hyprland (Wayland Compositor)

- **hyprland** - Dynamic tiling Wayland compositor
- **hyprlock** - Screen locker
- **waybar** - Status bar
- **rofi** - Application launcher
- **swaync** - Notification daemon
- **swaylock** - Screen locker
- **swayosd** - OSD for brightness/volume

## Fonts

- **JetBrains Mono Nerd Font**
- **Fira Code Nerd Font**
- **Caskaydia Cove Nerd Font**
- **Nerd Fonts Symbols**
- **Twemoji Color Font**
- **Noto Color Emoji**
- **Fantasque Sans Mono**
- **Maple Mono** (Custom)

## Themes & Icons

- **Colloid GTK Theme** (Green Dark Gruvbox variant)
- **Papirus Icon Theme** (Dark with green accent)
- **Bibata Cursors** (Modern Ice variant)

## System Services

### Core Services

- **pipewire** - Audio/video server (replaces PulseAudio)
- **flatpak** - Application sandboxing
- **gvfs** - Virtual filesystem
- **dbus** - Message bus system
- **fstrim** - SSD trim service
- **gnome-keyring** - Password manager
- **udisks2** - Disk management daemon
- **NetworkManager** - Network management

### Virtualization

- **virt-manager** - Virtual machine manager
- **virt-viewer** - Virtual machine viewer
- **spice** - Remote display protocol
- **spice-gtk** - SPICE client GTK
- **virtio-win** - VirtIO drivers
- **libvirtd** - Virtualization daemon
- **qemu** - Machine emulator

### Gaming (Disabled by default)

- **steam** - Gaming platform
- **gamescope** - Gaming compositor

### Build & Package Management

- **nh** - Nix helper
- **nix-ld** - Run unpatched binaries on NixOS

## Custom Scripts

The configuration includes custom shell scripts located in `scripts/scripts/`:

- **ascii.sh** - ASCII art display
- **compress.sh** - File compression utility
- **extract.sh** - Archive extraction
- **init-wallpaper.sh** - Initialize wallpaper
- **maxfetch.sh** - System fetch
- **music.sh** - Music control
- **nh-notify.sh** - NH notifications
- **power-menu.sh** - Power menu
- **random-wallpaper.sh** - Random wallpaper selector
- **runbg.sh** - Run in background
- **screenshot.sh** - Screenshot utility
- **show-keybinds.sh** - Display keybindings
- **toggle-blur.sh** - Toggle blur effect
- **toggle-float.sh** - Toggle floating windows
- **toggle-oppacity.sh** - Toggle opacity
- **toggle-rofi.sh** - Toggle Rofi
- **toggle-waybar.sh** - Toggle Waybar
- **vm-start.sh** - Start virtual machine
- **wall-change.sh** - Change wallpaper
- **wallpaper-picker.sh** - Pick wallpaper

## Shell Configuration

- **zsh** - Z shell with custom configuration
- **p10k** - Powerlevel10k prompt theme

## System Configuration

- **Timezone**: Europe/Paris
- **Locale**: en_US.UTF-8
- **Unfree packages**: Enabled
- **Flakes**: Enabled
- **Auto-optimize store**: Enabled
- **Binary caches**: Nix community, Nix gaming, Hyprland, Ghostty

---

_This list is generated from the NixOS configuration files in this repository._
_Last updated: January 4, 2026_
