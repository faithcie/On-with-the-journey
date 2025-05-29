{
  description = "Sol's OS, Fiat Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs =
    { nixpkgs, ... }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
    in
    {

      devShells."${pkgs.stdenv.hostPlatform.system}" = {
        "C" = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            git
            gcc
            clang-tools
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
            rust-analyzer
            rustfmt
          ];
          shellHook = ''
            echo "Fiat Nix!"
            cd ./Rust
          '';
        };
        "Zola" = pkgs.mkShell {
          nativeBuildInputs = with pkgs; [
            zola
          ];
          shellHook = ''
            echo "Fiat Nix!"
            cd ./Zola
          '';
        };
      };

    };
}
