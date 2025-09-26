{
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

  outputs = { self, nixpkgs }: {
    lib = import ./lib.nix { lib = nixpkgs.lib; };
    wrapperModules = import ./modules.nix {
      lib = nixpkgs.lib;
      wlib = self.lib;
    };
  };
}
