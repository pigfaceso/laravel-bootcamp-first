{
  description = "Frist laravel Bootcamp by pigfaceso";

  inputs.nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      devShells.${system}.default = pkgs.mkShell {
        name = "laravel-bootcamp-first";

        packages = with pkgs; [
          php
          phpPackages.composer
          laravel
        ];
      };
    };
}
