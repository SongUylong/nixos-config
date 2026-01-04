{ pkgs, config, ... }:
{
  hardware = {
    graphics = {
      enable = true;
      extraPackages = with pkgs; [
        intel-media-driver
        (intel-vaapi-driver.override { enableHybridCodec = true; })
        libva-vdpau-driver
        libvdpau-va-gl
      ];
    };

    # NVIDIA GPU Configuration
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = false;
      powerManagement.finegrained = false;
      open = false; # Use proprietary driver (not open-source kernel module)
      nvidiaSettings = true;
      package = config.boot.kernelPackages.nvidiaPackages.stable;
    };

    # Bluetooth
    bluetooth = {
      enable = true;
      powerOnBoot = true;
      settings = {
        General = {
          Enable = "Source,Sink,Media,Socket";
          Experimental = true;
        };
      };
    };
  };

  hardware.enableRedistributableFirmware = true;

  # Load NVIDIA driver for Xorg and Wayland
  services.xserver.videoDrivers = [ "nvidia" ];

  # Bluetooth services
  services.blueman.enable = true;

  # Fan control
  environment.systemPackages = with pkgs; [
    lm_sensors
  ];

  # Enable kernel modules for fan control
  boot.kernelModules = [ "coretemp" "nct6775" ];

  # Set fan to constant PWM 135 (~2854 RPM)
  systemd.services.fan-pwm-set = {
    description = "Set CPU fan to PWM 135";
    wantedBy = [ "multi-user.target" ];
    after = [ "systemd-modules-load.service" ];
    serviceConfig = {
      Type = "oneshot";
      RemainAfterExit = true;
      ExecStart = "${pkgs.bash}/bin/bash -c 'echo 1 > /sys/class/hwmon/hwmon2/pwm6_enable && echo 135 > /sys/class/hwmon/hwmon2/pwm6'";
    };
  };
}
