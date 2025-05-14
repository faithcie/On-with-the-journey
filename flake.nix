{
  description = "Sol's OS, Fiat Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
  };

  outputs = { nixpkgs, nixvim, ... }: let 
    pkgs = nixpkgs.legacyPackages.x86_64-linux;
  in {

    devShells."x86_64-linux" = {
      "C" = pkgs.mkShell {
        nativeBuildInputs = with pkgs; [
          git
          gcc
          cmake
        ];
        shellHook = ''
          echo "Fiat Nix!"
          cd ./C
        '';
      };
    };

  };
}
