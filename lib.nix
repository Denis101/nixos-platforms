inputs: let
  nixpkgs = inputs.nixpkgs.lib;
  nix-utils = inputs.nix-utils.lib;
in rec {
    platforms = nix-utils.forAllSystems (system: defaultFilesAttrset ./${system});
    linuxPlatforms = nixpkgs.filterAttrs (name: value: builtins.elem name linuxSystems) platforms;
    darwinPlatforms = nixpkgs.filterAttrs (name: value: builtins.elem name darwinSystems) platforms;
  }
