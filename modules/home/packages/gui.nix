{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Multimedia
    media-downloader
    obs-studio
    pavucontrol
    video-trimmer
    vlc

    ## Office
    gnome-calculator

    ## Utility
    dconf-editor
    gnome-disk-utility
    popsicle
    mission-center # GUI resources monitor
    zenity

    ## Level editor
    ldtk
    tiled
  ];
}
