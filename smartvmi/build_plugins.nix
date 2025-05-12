{ pkgs, smartvmi-source, yara-cmake }:
{
  apitracing = pkgs.callPackage ./build_plugin.nix {
    name = "apitracing";
    inherit smartvmi-source;
  };
  inmemoryscanner = pkgs.callPackage ./build_plugin.nix {
    name = "inmemoryscanner";
    inherit smartvmi-source;
    additionalDeps = [ yara-cmake ];
  };
}
