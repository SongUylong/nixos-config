{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Compiler
    gcc

    ## Lsp
    nixd # nix

    ## formating
    shfmt
    treefmt
    nixfmt-rfc-style

    ## Python
    python3
    python312Packages.ipython

    ## Node.js
    nodejs_22  # or nodejs_20, nodejs_18
    # nodePackages.npm  # included with nodejs
    # nodePackages.yarn
    nodePackages.pnpm
    bun

    ## AI Tools
    opencode

    ## Code Editors
    code-cursor
  ];
}
