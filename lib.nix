inputs: let
  nixpkgs = inputs.nixpkgs.lib;
  nix-utils = inputs.nix-utils.lib;
in rec {
  platforms = nix-utils.forAllSystems (system: nix-utils.defaultFilesAttrset ./${system});
  linuxPlatforms = nixpkgs.filterAttrs (name: value: builtins.elem name nix-utils.linuxSystems) platforms;
  darwinPlatforms = nixpkgs.filterAttrs (name: value: builtins.elem name nix-utils.darwinSystems) platforms;
}
