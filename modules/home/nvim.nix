{ config, pkgs, ... }:
{
  programs.neovim = {
    enable = true;
    vimAlias = true;
    viAlias = true;
    defaultEditor = true;
    
    # Additional packages needed for LazyVim
    extraPackages = with pkgs; [
      # Lua runtime and tools (5.1 required for image.nvim)
      lua5_1
      luajitPackages.luarocks
      
      # Image support for image.nvim
      imagemagick
      
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
