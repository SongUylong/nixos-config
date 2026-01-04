{ pkgs, ... }:
{
  boot = {
    loader = {
      efi = {
        canTouchEfiVariables = true;
        efiSysMountPoint = "/boot";
      };
      
      grub = {
        enable = true;
        device = "nodev";
        efiSupport = true;
        useOSProber = true;  # Automatically detect other operating systems
        configurationLimit = 5;
        theme = pkgs.nixos-grub2-theme;
      };
    };

    kernelPackages = pkgs.linuxPackages_latest;
    supportedFilesystems = [ "ntfs" ];
  };
}
