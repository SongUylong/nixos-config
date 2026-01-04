{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
    
    # Additional packages needed for LazyVim
    extraPackages = with pkgs; [
      # LSP servers
      lua-language-server
      nil # Nix LSP
      
      # Formatters
      stylua
      nixpkgs-fmt
      
      # Tools
      ripgrep
      fd
      lazygit
      
      # Clipboard support
      wl-clipboard
    ];
  };

  # Link your nvim configuration
  xdg.configFile."nvim" = {
    source = ../../nvim;
    recursive = true;
  };
}
