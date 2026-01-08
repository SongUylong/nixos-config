# NixOS Configuration - Complete User Manual

> **FrostPhoenix's NixOS Setup Guide**  
> A comprehensive guide to using your customized NixOS system with Hyprland

---

## Table of Contents

1. [Quick Start](#quick-start)
2. [Hyprland Window Manager](#hyprland-window-manager)
3. [Terminal & Shell (Zsh)](#terminal--shell-zsh)
4. [File Management](#file-management)
5. [Application Launcher & Menus](#application-launcher--menus)
6. [Web Browsing](#web-browsing)
7. [Development Environment](#development-environment)
8. [Multimedia](#multimedia)
9. [System Management](#system-management)
10. [Gaming](#gaming)
11. [Customization](#customization)
12. [Troubleshooting](#troubleshooting)

---

## Quick Start

### First Boot

1. Log in with username: `frostphoenix`
2. Hyprland will start automatically
3. Press `Super + F1` to see the keybindings cheatsheet
4. Press `Super + D` to open the application launcher

### Essential Keybindings

- `Super` = Windows/Command key (Main modifier)
- `Super + Return` = Open terminal (Ghostty)
- `Super + D` = Application launcher (Rofi)
- `Super + Q` = Close window
- `Super + Escape` = Lock screen
- `Super + F1` = Show all keybindings

---

## Hyprland Window Manager

Hyprland is a dynamic tiling Wayland compositor with beautiful animations and powerful features.

### Window Management Keybindings

#### Basic Window Actions

| Keybinding          | Action                     |
| ------------------- | -------------------------- |
| `Super + Q`         | Kill active window         |
| `Super + F`         | Toggle fullscreen (mode 0) |
| `Super + Shift + F` | Toggle fullscreen (mode 1) |
| `Super + Space`     | Toggle floating/tiling     |
| `Super + P`         | Toggle pseudo-tiling       |
| `Super + X`         | Toggle split direction     |
| `Super + T`         | Toggle window opacity      |

#### Window Focus (Vim-style)

| Keybinding                    | Action             |
| ----------------------------- | ------------------ |
| `Super + H` / `Super + Left`  | Focus window left  |
| `Super + J` / `Super + Down`  | Focus window down  |
| `Super + K` / `Super + Up`    | Focus window up    |
| `Super + L` / `Super + Right` | Focus window right |

#### Focus Floating/Tiled

| Keybinding          | Action                |
| ------------------- | --------------------- |
| `Ctrl + Alt + Up`   | Focus floating window |
| `Ctrl + Alt + Down` | Focus tiled window    |

#### Window Movement

| Keybinding                                    | Action            |
| --------------------------------------------- | ----------------- |
| `Super + Shift + H` / `Super + Shift + Left`  | Move window left  |
| `Super + Shift + J` / `Super + Shift + Down`  | Move window down  |
| `Super + Shift + K` / `Super + Shift + Up`    | Move window up    |
| `Super + Shift + L` / `Super + Shift + Right` | Move window right |

#### Window Resizing

| Keybinding                                  | Action               |
| ------------------------------------------- | -------------------- |
| `Super + Ctrl + H` / `Super + Ctrl + Left`  | Resize left (-80px)  |
| `Super + Ctrl + J` / `Super + Ctrl + Down`  | Resize down (+80px)  |
| `Super + Ctrl + K` / `Super + Ctrl + Up`    | Resize up (-80px)    |
| `Super + Ctrl + L` / `Super + Ctrl + Right` | Resize right (+80px) |

#### Window Position (Floating)

| Keybinding                                | Action             |
| ----------------------------------------- | ------------------ |
| `Super + Alt + H` / `Super + Alt + Left`  | Move left (-80px)  |
| `Super + Alt + J` / `Super + Alt + Down`  | Move down (+80px)  |
| `Super + Alt + K` / `Super + Alt + Up`    | Move up (-80px)    |
| `Super + Alt + L` / `Super + Alt + Right` | Move right (+80px) |

#### Mouse Actions

| Keybinding                 | Action             |
| -------------------------- | ------------------ |
| `Super + Left Mouse`       | Move window        |
| `Super + Right Mouse`      | Resize window      |
| `Super + Mouse Wheel Up`   | Next workspace     |
| `Super + Mouse Wheel Down` | Previous workspace |

### Workspace Management

#### Switch to Workspace

| Keybinding    | Action                   |
| ------------- | ------------------------ |
| `Super + 1-0` | Switch to workspace 1-10 |

#### Move Window to Workspace

| Keybinding            | Action                                   |
| --------------------- | ---------------------------------------- |
| `Super + Shift + 1-0` | Move window to workspace 1-10 (silently) |
| `Super + Ctrl + C`    | Move window to empty workspace           |

### Application Launching

| Keybinding               | Action                                       |
| ------------------------ | -------------------------------------------- |
| `Super + Return`         | Terminal (Ghostty)                           |
| `Alt + Return`           | Floating terminal (1111x700)                 |
| `Super + Shift + Return` | Fullscreen terminal                          |
| `Super + B`              | Browser (Zen) on workspace 1                 |
| `Super + E`              | File manager (Nemo)                          |
| `Alt + E`                | Floating file manager                        |
| `Super + Shift + D`      | Discord (Webcord)                            |
| `Super + Shift + S`      | SoundWire Server (workspace 5)               |
| `Ctrl + Shift + Escape`  | System monitor (Mission Center, workspace 9) |

### System Controls

| Keybinding               | Action                     |
| ------------------------ | -------------------------- |
| `Super + Escape`         | Lock screen (Swaylock)     |
| `Alt + Escape`           | Lock screen (Hyprlock)     |
| `Super + Shift + Escape` | Power menu                 |
| `Super + N`              | Toggle notification center |
| `Super + Shift + B`      | Toggle Waybar              |
| `Super + C`              | Color picker (Hyprpicker)  |
| `Super + =`              | Zoom (Woomer)              |

### Screenshots

| Keybinding              | Action                              |
| ----------------------- | ----------------------------------- |
| `Print`                 | Screenshot to clipboard             |
| `Super + Print`         | Screenshot to file                  |
| `Super + Shift + Print` | Screenshot with annotation (Swappy) |

### Wallpaper

| Keybinding          | Action                           |
| ------------------- | -------------------------------- |
| `Super + W`         | Wallpaper picker (custom script) |
| `Super + Shift + W` | Waypaper GUI (floating)          |

### Clipboard

| Keybinding  | Action                              |
| ----------- | ----------------------------------- |
| `Super + V` | Clipboard history (Rofi + Cliphist) |

### Media Controls

| Keybinding      | Action         |
| --------------- | -------------- |
| `XF86AudioPlay` | Play/Pause     |
| `XF86AudioNext` | Next track     |
| `XF86AudioPrev` | Previous track |
| `XF86AudioStop` | Stop playback  |

### Rofi Launcher

| Keybinding  | Action               |
| ----------- | -------------------- |
| `Super + D` | Application launcher |

---

## Terminal & Shell (Zsh)

Your shell is Zsh with Powerlevel10k theme, providing a beautiful and functional command-line experience.

### Terminal Emulators

**Primary: Ghostty**

- Modern, GPU-accelerated terminal
- Launch: `Super + Return`
- Floating: `Alt + Return`
- Fullscreen: `Super + Shift + Return`

**Alternative: Kitty**

- Another GPU-accelerated option
- Launch from Rofi (`Super + D`)

### Shell Aliases

#### General Utilities

| Alias   | Command                                | Description                         |
| ------- | -------------------------------------- | ----------------------------------- |
| `c`     | `clear`                                | Clear screen                        |
| `cd`    | `z`                                    | Change directory (with zoxide)      |
| `tt`    | `gtrash put`                           | Move to trash                       |
| `cat`   | `bat`                                  | Better cat with syntax highlighting |
| `nano`  | `micro`                                | Modern terminal editor              |
| `code`  | `codium`                               | VSCodium editor                     |
| `diff`  | `delta --diff-so-fancy --side-by-side` | Better diff viewer                  |
| `less`  | `bat`                                  | Pager with syntax highlighting      |
| `copy`  | `wl-copy`                              | Copy to clipboard                   |
| `f`     | `superfile`                            | TUI file manager                    |
| `py`    | `python`                               | Python interpreter                  |
| `ipy`   | `ipython`                              | Interactive Python                  |
| `icat`  | `kitten icat`                          | Display images in terminal          |
| `dsize` | `du -hs`                               | Directory size                      |
| `pdf`   | `tdf`                                  | View PDF in terminal                |
| `open`  | `xdg-open`                             | Open file with default app          |
| `space` | `ncdu`                                 | Disk space analyzer                 |
| `man`   | `batman`                               | Man pages with bat                  |

#### File Listing

| Alias  | Command                                                        | Description           |
| ------ | -------------------------------------------------------------- | --------------------- |
| `l`    | `eza --icons -a --group-directories-first -1 --no-user --long` | List files with icons |
| `tree` | `eza --icons --tree --group-directories-first`                 | Tree view with icons  |

#### NixOS Management

| Alias     | Command                                      | Description           |
| --------- | -------------------------------------------- | --------------------- |
| `cdnix`   | `cd ~/nixos-config && codium ~/nixos-config` | Open NixOS config     |
| `ns`      | `nom-shell --run zsh`                        | Nix shell             |
| `nd`      | `nom develop --command zsh`                  | Nix develop           |
| `nb`      | `nom build`                                  | Nix build             |
| `nc`      | `nh-notify nh clean all --keep 5`            | Clean old generations |
| `nft`     | `nh-notify nh os test`                       | Test NixOS config     |
| `nfs`     | `nh-notify nh os switch`                     | Switch NixOS config   |
| `nfu`     | `nh-notify nh os switch --update`            | Update and switch     |
| `nsearch` | `nh search`                                  | Search Nix packages   |

#### Python Development

| Alias | Command                     | Description                  |
| ----- | --------------------------- | ---------------------------- |
| `piv` | `python -m venv .venv`      | Create virtual environment   |
| `psv` | `source .venv/bin/activate` | Activate virtual environment |

### Shell Features

#### Zoxide (Smart cd)

- Automatically learns your most-used directories
- Jump to directories with partial names
- Usage: `z <partial-name>`
- Example: `z nixos` → jumps to `~/nixos-config`

#### Fzf (Fuzzy Finder)

- `Ctrl + R` - Search command history
- `Ctrl + T` - Search files
- `Alt + C` - Search directories
- Tab completion is enhanced with fzf

#### Auto-suggestions

- Type a command and see suggestions from history
- Press `→` (right arrow) to accept suggestion

#### Syntax Highlighting

- Commands are highlighted in real-time
- Valid commands: green
- Invalid commands: red

#### Zsh Plugins Enabled

- **powerlevel10k** - Beautiful prompt
- **fzf-tab** - Fuzzy finder for completions
- **zsh-autopair** - Auto-close brackets/quotes
- **zsh-autosuggestions** - Command suggestions

---

## File Management

### Nemo (GUI File Manager)

- Launch: `Super + E`
- Floating: `Alt + E`
- Full-featured GNOME file manager

### Superfile (TUI File Manager)

- Launch: `f` (in terminal)
- Vim-like keybindings
- Modern, fast, and beautiful

### Useful File Commands

#### Better Core Utils

```bash
# List files with icons and colors
l                          # Long list
tree                       # Tree view
eza --icons -a            # All files with icons

# Find files
fd <pattern>              # Fast file finder
fd -e txt                 # Find by extension
fd -H                     # Include hidden files

# Search in files
rg <pattern>              # Ripgrep - fast search
rg -i <pattern>          # Case-insensitive
rg -l <pattern>          # List files only

# Disk usage
duf                       # Beautiful disk info
ncdu                      # Interactive disk usage
space                     # Alias for ncdu

# File information
file <filename>           # File type
hexyl <filename>         # Hex viewer
```

#### Archive Operations

```bash
# Extract (custom script)
extract <archive>         # Auto-detects format

# Compress (custom script)
compress <files>          # Creates archive

# GUI archive manager
file-roller              # GNOME archive manager
```

---

## Application Launcher & Menus

### Rofi (Application Launcher)

#### Main Launcher

- `Super + D` - Launch applications
- Type to search
- `Enter` - Launch selected app
- `Esc` - Close

#### Clipboard Manager

- `Super + V` - Show clipboard history
- Select entry to copy

#### Power Menu

- `Super + Shift + Escape`
- Options: Shutdown, Reboot, Logout, Suspend, Lock

### Waybar (Status Bar)

Top bar showing:

- Workspaces (clickable)
- Window title
- System tray
- Clock
- System resources
- Network status
- Audio volume
- Battery (on laptop)

Toggle: `Super + Shift + B`

### Notification Center (SwayNC)

- `Super + N` - Toggle notification panel
- Shows recent notifications
- Click to interact
- "Do Not Disturb" mode available

---

## Web Browsing

### Firefox

- Privacy-focused web browser
- Launch: `Super + B` (opens on workspace 1)
- Or from Rofi: `Super + D` → type "firefox"

#### Default for

- HTTP/HTTPS links
- HTML files
- Web content

---

## Development Environment

### Text Editors

#### Neovim

```bash
nvim <file>              # Launch Neovim
vim <file>               # Alias to Neovim
```

- Vim-based editor
- Configured for development

#### Micro

```bash
micro <file>             # Launch Micro
nano <file>              # Alias to Micro
```

- Modern terminal editor
- User-friendly keybindings
- `Ctrl + Q` - Quit
- `Ctrl + S` - Save
- `Ctrl + E` - Command execution

#### VSCodium

```bash
codium <file/directory>  # Launch VSCodium
code <file/directory>    # Alias to VSCodium
```

- VS Code without Microsoft telemetry
- Extensions installed:
  - Nix IDE
  - Nix Env Selector
  - Clangd (C/C++)
  - Zig support
  - Go support
  - TOML support
  - Gruvbox theme

### Version Control (Git)

#### Git Configuration

- User: Frost-Phoenix
- Email: 67cyril6767@gmail.com
- Default branch: main

#### Git Tools

```bash
# Command line
git <command>            # Standard git
gh <command>             # GitHub CLI

# TUI
lazygit                  # Beautiful git TUI

# Diff viewer
delta <file>             # Git diff with syntax highlighting
diff <file1> <file2>    # Alias for delta
```

#### Git Aliases (from git.nix)

Check your git config for custom aliases with:

```bash
git config --list | grep alias
```

### Programming Languages

#### Python

```bash
python                   # Python 3
py                       # Alias
ipython                  # Interactive Python
ipy                      # Alias

# Virtual environments
piv                      # Create venv
psv                      # Activate venv
```

#### C/C++

```bash
gcc <file>               # Compile with GCC
g++ <file>               # Compile C++
clang <file>             # Compile with Clang
cmake .                  # Generate build files
make                     # Build project
gdb <program>            # Debug with GDB
valgrind <program>       # Memory debugging
```

#### Zig

- Zig compiler installed
- VSCodium extension available
- Shell completions enabled

#### Go

- Go compiler installed
- VSCodium extension available

### Development Tools

#### LSP Servers

- `nixd` - Nix
- `clangd` - C/C++
- More can be added as needed

#### Formatters

```bash
nixfmt <file>            # Format Nix files
shfmt <file>             # Format shell scripts
treefmt                  # Multi-language formatter
```

#### Build Tools

```bash
cmake                    # CMake
make                     # GNU Make
```

### Nix Development

#### Search Packages

```bash
nsearch <package>        # Search NixOS packages
nh search <package>      # Direct nh command
```

#### Run Without Installing

```bash
, <package>              # Run package without installing (comma)
# Example: , cowsay "Hello"
```

#### Nix Development Tools

```bash
nix-tree                 # Browse package dependencies
nix-du                   # Nix store space
nix-melt                 # View flake.lock
nix-output-monitor       # Better nix build output
nom build                # Build with monitoring
nom-shell                # Shell with monitoring
```

---

## Multimedia

### Image Viewing

#### IMV (Image Viewer)

```bash
imv <image>              # View image
```

- Lightweight Wayland image viewer
- Keybindings:
  - `Q` - Quit
  - `N` / `Space` - Next image
  - `P` / `Backspace` - Previous image
  - `+` / `-` - Zoom in/out

#### Terminal Image Viewing

```bash
icat <image>             # Display in terminal (Kitty)
```

### Image Editing

#### GIMP

```bash
gimp                     # Launch GIMP
```

- Professional image editor
- Photoshop alternative

#### Aseprite

```bash
aseprite                 # Pixel art editor
```

- Best for pixel art and sprites
- Animation support

### Audio

#### Music Players

**Spotify (Spicetify)**

```bash
spotify                  # Launch Spotify
```

- Customized with Spicetify
- Extensions enabled:
  - Keyboard shortcuts
  - Shuffle+
  - Seek song
  - Hide podcasts
  - Adblock
  - Volume percentage
  - Queue time
  - Auto-skip video
  - Play next

**Audacious**

```bash
audacious                # Launch Audacious
```

- Lightweight music player
- Custom config included

**Lowfi**

```bash
lowfi                    # Lo-fi music in terminal
```

- Lo-fi music player for terminal

#### Audio Control

**PulseAudio/PipeWire**

```bash
pamixer -t               # Toggle mute
pamixer -i 5            # Increase volume
pamixer -d 5            # Decrease volume
```

**Pavucontrol**

```bash
pavucontrol              # GUI volume control
```

- Per-application volume control
- Input/output device management

**Media Control**

```bash
playerctl play-pause     # Play/pause
playerctl next          # Next track
playerctl previous      # Previous track
playerctl stop          # Stop
```

#### Audio Visualizer (Cava)

```bash
cava                     # Terminal audio visualizer
```

- Beautiful audio visualization
- Custom config included

### Video

#### MPV (Video Player)

```bash
mpv <video>              # Play video
```

- Minimal, powerful video player
- Keyboard controls:
  - `Space` - Play/pause
  - `Left/Right` - Seek 5s
  - `Up/Down` - Seek 1min
  - `9/0` - Volume down/up
  - `F` - Fullscreen
  - `Q` - Quit

#### VLC

```bash
vlc                      # Launch VLC
```

- Feature-rich media player
- Supports almost all formats

#### Video Editing

**Video Trimmer**

```bash
video-trimmer            # Simple video trimming
```

**OBS Studio**

```bash
obs                      # Screen recording & streaming
```

- Professional screen recording
- Live streaming support
- Scene composition

### Media Download

**yt-dlp**

```bash
yt-dlp <url>             # Download video
yt-dlp -x <url>         # Extract audio only
yt-dlp -F <url>         # List formats
yt-dlp -f <format> <url> # Download specific format
```

**Media Downloader (GUI)**

```bash
media-downloader         # GUI for yt-dlp
```

---

## System Management

### NixOS Configuration

#### Viewing Configuration

```bash
cdnix                    # Open config in VSCodium
cd ~/nixos-config        # Navigate to config
```

#### Testing Changes

```bash
nft                      # Test config (no activation)
nh os test              # Direct command
```

#### Applying Changes

```bash
nfs                      # Switch to new config
nh os switch            # Direct command
```

#### Updating System

```bash
nfu                      # Update flake inputs & switch
nh os switch --update   # Direct command
```

#### Cleaning Old Generations

```bash
nc                       # Keep last 5 generations
nh clean all --keep 5   # Direct command
```

### System Information

#### System Fetch

```bash
fastfetch                # System info
onefetch                 # Git repo info (in repo dir)
```

#### System Monitoring

**htop**

```bash
htop                     # Interactive process viewer
```

**btop**

```bash
btop                     # Beautiful resource monitor
```

- CPU, RAM, disk, network monitoring
- Process management
- Custom theme configured

**nvtop**

```bash
nvtop                    # GPU monitoring (Intel)
```

**Mission Center (GUI)**

- Launch: `Ctrl + Shift + Escape`
- Opens on workspace 9
- Beautiful system monitor
- CPU, RAM, GPU, disk, network graphs

### Disk Management

#### Disk Space

```bash
duf                      # Disk usage overview
ncdu                     # Interactive disk analyzer
space                    # Alias for ncdu
dsize <directory>       # Directory size
```

#### Disk Utility (GUI)

```bash
gnome-disk-utility       # GNOME Disks
```

- Partition management
- SMART data
- Benchmark disks

#### USB Flasher

```bash
popsicle                 # USB flasher GUI
```

- Flash ISO to USB
- Multiple USB support

### Network Management

#### NetworkManager

- GUI: NetworkManager applet in system tray
- CLI:

```bash
nmcli                    # NetworkManager CLI
nmcli device wifi list  # List WiFi networks
nmcli device wifi connect <SSID> password <password>
```

#### Network Monitoring

```bash
wavemon                  # Wireless network monitor
```

### Power Management

#### Power Menu

- `Super + Shift + Escape`
- Options:
  - Shutdown
  - Reboot
  - Logout
  - Suspend
  - Hibernate (if configured)
  - Lock

#### Lock Screen

```bash
swaylock                 # Lock screen
# Or: Super + Escape
```

```bash
hyprlock                 # Alternative lock
# Or: Alt + Escape
```

### Virtualization

#### Virtual Machine Manager

```bash
virt-manager             # GUI for managing VMs
```

#### Starting VMs

```bash
vm-start                 # Custom VM start script
```

#### VM Features

- QEMU/KVM backend
- SPICE protocol for display
- USB redirection enabled
- VirtIO drivers available

### Flatpak Applications

```bash
flatpak list             # List installed
flatpak search <name>    # Search Flathub
flatpak install <app>    # Install app
flatpak run <app>        # Run app
flatpak update           # Update all
```

---

## Gaming

### Steam (Disabled by Default)

If enabled in configuration:

```bash
steam                    # Launch Steam
```

- Gamescope integration
- Proton GE available

### Emulators

#### RetroArch

```bash
retroarch                # Multi-system emulator
```

- Supports many retro systems
- Core-based architecture

#### Standalone Emulators

```bash
sameboy                  # Game Boy / Game Boy Color
snes9x                   # Super Nintendo
```

### CLI Games

```bash
2048                     # 2048 game
2048-in-terminal        # Terminal version
vitetris                # Tetris clone
nethack                 # Classic roguelike
crispy-doom             # Doom source port
```

### Game Development

#### Level Editors

```bash
ldtk                     # LDtk level editor
tiled                    # Tiled map editor
```

#### Pixel Art

```bash
aseprite                 # Pixel art editor
```

---

## Customization

### Wallpapers

#### Change Wallpaper

```bash
wallpaper-picker         # Script selector
# Or: Super + W
```

```bash
waypaper                 # GUI wallpaper picker
# Or: Super + Shift + W
```

#### Random Wallpaper

```bash
random-wallpaper         # Set random wallpaper
```

#### Wallpaper Locations

- `~/nixos-config/wallpapers/`
- `~/nixos-config/wallpapers/otherWallpaper/gruvbox/`
- `~/nixos-config/wallpapers/otherWallpaper/nixos/`

### Themes

#### GTK Theme

- **Theme**: Colloid Green Dark Gruvbox
- **Icons**: Papirus Dark (green accent)
- **Cursor**: Bibata Modern Ice

#### Color Picker

```bash
hyprpicker -a            # Pick color (auto-copy)
# Or: Super + C
```

### Window Effects

#### Toggle Opacity

```bash
toggle-oppacity          # Toggle window transparency
# Or: Super + T
```

#### Toggle Blur

```bash
toggle-blur              # Toggle background blur
```

#### Toggle Float

```bash
toggle-float             # Toggle floating mode
# Or: Super + Space
```

### Waybar Customization

- Config: `~/.config/waybar/`
- Toggle: `Super + Shift + B`

### Rofi Customization

- Themes: `~/.config/rofi/`
- Main theme: `theme.rasi`
- Power menu theme: `powermenu-theme.rasi`

### Hyprland Customization

Edit: `~/nixos-config/modules/home/hyprland/`

- `binds.nix` - Keybindings
- `settings.nix` - General settings
- `windowrules.nix` - Window rules
- `monitors.nix` - Monitor configuration
- `variables.nix` - Environment variables

After editing, apply with:

```bash
nfs                      # Rebuild and switch
```

---

## Keyboard Programming

### QMK Keyboards

#### Via

```bash
via                      # Configure keyboard
```

- GUI keyboard configurator
- Real-time key remapping

#### Vial

```bash
vial                     # Alternative to Via
```

- Open-source Via alternative

#### QMK CLI

```bash
qmk                      # QMK command line
qmk compile             # Compile firmware
qmk flash               # Flash keyboard
```

---

## Productivity

### Note Taking

#### Obsidian

```bash
obsidian                 # Knowledge base
```

- Markdown-based notes
- Graph view
- Plugins available

### Office Suite

#### LibreOffice

```bash
libreoffice              # Office suite
lowriter                # Writer (word processor)
localc                  # Calc (spreadsheet)
loimpress               # Impress (presentations)
```

#### PDF Viewer

**Evince**

```bash
evince <pdf>             # GNOME PDF viewer
```

**TDF (Terminal)**

```bash
tdf <pdf>                # View PDF in terminal
pdf <pdf>                # Alias
```

### Calculator

```bash
gnome-calculator         # GUI calculator
```

```bash
programmer-calculator    # TUI for programmers
```

- Binary, hex, decimal conversions
- Bitwise operations

### Text Editor

```bash
gnome-text-editor        # Simple GUI editor
```

- GNOME's text editor
- Clean interface
- Syntax highlighting

---

## Communication

### Discord (Webcord)

```bash
webcord                  # Privacy-focused Discord client
# Or: Super + Shift + D
```

- Open-source Discord client
- Better privacy than official client
- Wayland support

### SoundWire Server

```bash
SoundWireServer          # Stream audio to phone
# Or: Super + Shift + S (opens on workspace 5)
```

---

## Utilities

### Screen Tools

#### Screenshot

- `Print` - Copy to clipboard
- `Super + Print` - Save to file
- `Super + Shift + Print` - Annotate with Swappy

Scripts handle naming and location automatically.

#### Zoom

```bash
woomer                   # Screen magnifier
# Or: Super + =
```

### Color Tools

#### Color Picker

```bash
hyprpicker -a            # Pick and copy color
# Or: Super + C
```

#### Color Manipulation

```bash
pastel <color>           # Manipulate colors
pastel color 00ff00     # Analyze color
pastel lighten 0.2 <color>  # Lighten color
```

### Clipboard

#### Clipboard Manager

- `Super + V` - Show history
- Stores text and images
- Managed by `cliphist`

#### Manual Clipboard

```bash
wl-copy < file           # Copy file content
wl-paste > file         # Paste to file
echo "text" | wl-copy   # Copy text
copy                    # Alias for wl-copy
```

### Translation

#### Translate Shell

```bash
trans :fr "Hello"        # Translate to French
trans -b :fr "Hello"    # Brief output
trans -s en -t fr "Hello"  # Specify source/target
```

#### GTT (TUI)

```bash
gtt                      # Google Translate TUI
```

### Benchmarking

```bash
hyperfine <command>      # Benchmark command
hyperfine 'command1' 'command2'  # Compare commands
```

### File Transfer

#### Download

```bash
wget <url>               # Download file
```

#### Archive Management

```bash
extract <archive>        # Auto-extract
compress <files>         # Create archive
```

### Process Management

#### Finding Processes

```bash
htop                     # Interactive viewer
btop                     # Beautiful viewer
ps aux | grep <name>    # Search processes
```

#### Killing Processes

```bash
killall <name>           # Kill by name
kill <pid>               # Kill by PID
```

### System Services

```bash
systemctl status <service>   # Check status
systemctl start <service>    # Start service
systemctl stop <service>     # Stop service
systemctl restart <service>  # Restart service
```

For user services:

```bash
systemctl --user status <service>
```

---

## Fun & Entertainment

### Terminal Fun

#### ASCII Art

```bash
cowsay "Hello!"          # Cow saying something
fortune                  # Random quote
fortune | cowsay        # Random quote from cow
figlet "Hello"          # Big text
ascii                   # Custom ASCII art script
```

#### Animations

```bash
cmatrix                  # Matrix rain
pipes                    # Animated pipes
cbonsai                 # Bonsai tree
asciiquarium            # Aquarium
sl                      # Steam locomotive (typo fun!)
lavat                   # Lava lamp
```

#### Text Effects

```bash
echo "Rainbow" | lolcat  # Rainbow text
fortune | lolcat        # Rainbow fortune
```

#### Clocks

```bash
tty-clock                # Terminal clock
tty-clock -c            # Centered clock
```

#### Games

```bash
2048                     # 2048 puzzle
vitetris                # Tetris
nethack                 # Roguelike adventure
```

### Typing Practice

```bash
ttyper                   # Typing test
toipe                    # Alternative typing test
```

### Reading

```bash
epy <epub-file>          # eBook reader
```

---

## Configuration Files

### Important Locations

#### NixOS Configuration

- Main: `~/nixos-config/`
- Flake: `~/nixos-config/flake.nix`
- Hosts: `~/nixos-config/hosts/`
- Modules: `~/nixos-config/modules/`

#### User Configuration (symlinked by Home Manager)

- `~/.config/hypr/` - Hyprland
- `~/.config/waybar/` - Waybar
- `~/.config/rofi/` - Rofi
- `~/.config/kitty/` - Kitty
- `~/.config/ghostty/` - Ghostty
- `~/.config/nvim/` - Neovim
- `~/.config/zsh/` - Zsh
- `~/.config/git/` - Git

### Editing Configuration

1. Open config:

```bash
cdnix                    # Opens in VSCodium
```

2. Make changes

3. Test configuration:

```bash
nft                      # Test without activating
```

4. Apply changes:

```bash
nfs                      # Switch to new config
```

5. If something breaks:

```bash
# Reboot and select previous generation from bootloader
# Or rollback:
sudo nixos-rebuild switch --rollback
```

---

## Troubleshooting

### Common Issues

#### Display Issues

**No display after login**

1. Check Hyprland logs:

```bash
cat /tmp/hypr/$(ls -t /tmp/hypr/ | head -n 1)/hyprland.log
```

2. Try starting from TTY:

```bash
Ctrl + Alt + F2          # Switch to TTY2
Hyprland                 # Start manually
```

**Screen tearing**

- Already configured in Hyprland settings
- Check `settings.nix` for VRR settings

#### Audio Issues

**No audio**

```bash
systemctl --user status pipewire
systemctl --user restart pipewire
```

**Wrong output device**

```bash
pavucontrol              # Select correct device
```

#### Network Issues

**WiFi not working**

```bash
nmcli device              # Check device status
sudo systemctl restart NetworkManager
```

**Connection drops**

```bash
wavemon                  # Monitor signal
```

#### Application Issues

**Application won't start from Rofi**

- Try starting from terminal to see errors
- Check if the package is installed:

```bash
which <application>
```

**Wayland app issues**

- Some apps need Wayland environment variables
- Already set in `variables.nix`

#### Performance Issues

**High CPU usage**

```bash
btop                     # Check what's using CPU
htop                     # Alternative
```

**High memory usage**

```bash
btop                     # Check memory usage
# Clean nix store:
nc                       # Clean old generations
nix-store --gc          # Garbage collect
```

**Disk space full**

```bash
ncdu /                   # Find large directories
nc                       # Clean old Nix generations
nix-store --gc          # Garbage collect
```

### System Maintenance

#### Regular Maintenance

```bash
# Weekly:
nfu                      # Update system
nc                       # Clean old generations

# Monthly:
nix-store --optimize    # Optimize Nix store
```

#### Check System Health

```bash
# System logs
journalctl -xe           # Recent errors
journalctl -b            # Boot logs
journalctl -f            # Follow logs

# Disk health
sudo smartctl -a /dev/sda  # SMART status

# System info
btop                     # Resource usage
duf                      # Disk usage
```

### Getting Help

#### Documentation

```bash
man <command>            # Manual pages
<command> --help        # Help text
tldr <command>           # Simplified examples
```

#### Nix Help

```bash
nixos-help               # Open NixOS manual
nix --help               # Nix command help
```

#### Search Packages

```bash
nsearch <package>        # Search packages
# Or visit: https://search.nixos.org/packages
```

#### Check Package Options

```bash
# Visit: https://search.nixos.org/options
```

---

## Quick Reference Card

### Most Used Keybindings

```
┌─────────────────── HYPRLAND QUICK REFERENCE ───────────────────┐
│                                                                 │
│  SUPER + F1          Show this keybind list                    │
│  SUPER + Return      Open terminal                             │
│  SUPER + D           Application launcher                      │
│  SUPER + Q           Close window                              │
│  SUPER + F           Fullscreen                                │
│  SUPER + Space       Toggle float                              │
│  SUPER + E           File manager                              │
│  SUPER + B           Browser (workspace 1)                     │
│  SUPER + Escape      Lock screen                               │
│  SUPER + Shift + Escape  Power menu                            │
│                                                                 │
│  SUPER + H/J/K/L     Focus window (vim keys)                   │
│  SUPER + 1-0         Switch workspace                          │
│  SUPER + Shift + 1-0 Move to workspace                         │
│  SUPER + Shift + H/J/K/L  Move window                          │
│  SUPER + Ctrl + H/J/K/L   Resize window                        │
│                                                                 │
│  Print               Screenshot (copy)                         │
│  SUPER + Print       Screenshot (save)                         │
│  SUPER + V           Clipboard history                         │
│  SUPER + N           Notifications                             │
│  SUPER + C           Color picker                              │
│  SUPER + W           Wallpaper picker                          │
│                                                                 │
└─────────────────────────────────────────────────────────────────┘
```

### Most Used Commands

```bash
# File Management
l                        # List files
tree                     # Tree view
f                        # File manager (TUI)
cd / z <dir>            # Change directory

# Text Editing
nvim <file>              # Neovim
micro <file>             # Micro editor
code <dir>               # VSCodium

# System Management
nfs                      # Switch NixOS config
nfu                      # Update and switch
nc                       # Clean old generations
nsearch <pkg>            # Search packages

# System Monitoring
btop                     # Resource monitor
duf                      # Disk usage
htop                     # Process viewer

# Git
lazygit                  # Git TUI
git status              # Git status

# Search & Find
rg <pattern>            # Search in files
fd <pattern>            # Find files
fzf                      # Fuzzy finder
```

---

## Tips & Tricks

### Productivity Tips

1. **Use workspaces effectively**

   - Workspace 1: Browser
   - Workspace 2-4: Development
   - Workspace 5: Music/Communication
   - Workspace 9: System monitoring

2. **Master the terminal**

   - Use `z` instead of `cd` for faster navigation
   - Use aliases (`l`, `tree`, etc.)
   - Leverage fzf: `Ctrl + R` for history

3. **Use floating windows for quick tasks**

   - `Alt + Return`: Floating terminal
   - `Alt + E`: Floating file manager
   - `Super + W`: Quick wallpaper change

4. **Clipboard history is your friend**

   - `Super + V` to access past copies
   - Works with text and images

5. **Learn vim motions**
   - Used in: Neovim, Hyprland focus, many TUIs
   - H/J/K/L = Left/Down/Up/Right

### Customization Tips

1. **Create your own scripts**

   - Add to `~/nixos-config/scripts/scripts/`
   - They'll be automatically available after `nfs`

2. **Add packages easily**

   - Edit appropriate module in `modules/home/packages/`
   - Run `nfs` to install

3. **Try before installing**

   - Use `, <package>` to run without installing
   - Example: `, btm` (runs bottom)

4. **Customize colors**
   - Gruvbox theme is used throughout
   - Edit GTK theme in `modules/home/gtk.nix`

### Performance Tips

1. **Keep system clean**

   - Run `nc` weekly
   - Keeps only 5 generations

2. **Optimize Nix store**

   ```bash
   nix-store --optimize
   ```

3. **Monitor resource usage**

   - Use `btop` to identify resource hogs

4. **Use appropriate tools**
   - Use `bat` instead of `cat` for large files
   - Use `eza` instead of `ls` for better performance

---

## Keyboard Layout

### Default Layout

- **Primary**: US (QWERTY)
- **Secondary**: French (AZERTY)
- **Switch**: `Alt + Caps Lock`

---

## Backup & Recovery

### Important Files to Backup

1. **NixOS Configuration**

   - `~/nixos-config/`
   - This is your entire system config!

2. **User Data**

   - `~/Documents/`
   - `~/Pictures/`
   - `~/.ssh/` (SSH keys)
   - `~/.gnupg/` (GPG keys)

3. **Application Data**
   - `~/.config/` (app configs not managed by Nix)
   - `~/.local/share/` (app data)

### Recovery

If system breaks:

1. Reboot
2. In GRUB, select previous generation
3. System will boot with old configuration
4. Fix the issue in `~/nixos-config/`
5. Run `nfs` when ready

---

## Additional Resources

### Official Documentation

- NixOS Manual: `nixos-help` or https://nixos.org/manual/nixos/stable/
- Nix Pills: https://nixos.org/guides/nix-pills/
- Home Manager: https://nix-community.github.io/home-manager/

### Community

- NixOS Discourse: https://discourse.nixos.org/
- NixOS Wiki: https://nixos.wiki/
- r/NixOS: https://reddit.com/r/NixOS

### Hyprland

- Wiki: https://wiki.hyprland.org/
- GitHub: https://github.com/hyprwm/Hyprland

---

## Version Information

- **System User**: frostphoenix
- **Timezone**: Europe/Paris
- **Locale**: en_US.UTF-8
- **NixOS Channel**: unstable
- **Window Manager**: Hyprland (Wayland)
- **Shell**: Zsh with Powerlevel10k
- **Terminal**: Ghostty (primary), Kitty (alternative)
- **Editor**: Neovim, Micro, VSCodium
- **Theme**: Gruvbox Dark

---

## Conclusion

This manual covers the essential usage of your customized NixOS system. Remember:

- **Super + F1** for quick keybinding reference
- Most configurations are in `~/nixos-config/`
- Test with `nft`, apply with `nfs`
- Previous generations are always available in GRUB
- Use `nsearch` to find new packages

Enjoy your NixOS system! 🎉

---

_Last updated: January 4, 2026_  
_Configuration: FrostPhoenix's NixOS Setup_
