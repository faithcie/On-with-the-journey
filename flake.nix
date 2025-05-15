{
  description = "Sol's OS, Fiat Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { nixpkgs, nixvim, ... }: let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {

    devShells."${pkgs.stdenv.hostPlatform.system}" = {
      "C" = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          git
          gcc
        ];
        shellHook = ''
          echo "Fiat Nix!"
          cd ./C
        '';
      };
      "Rust" = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          cargo
          rustc
        ];
        shellHook = ''
          echo "Fiat Nix!"
          cd ./Rust
        '';
      };
    };

  };
}
