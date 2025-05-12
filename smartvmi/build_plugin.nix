{
  # plugin parameters
  name
, additionalDeps ? [ ]
, # deps
  cmake
, fmt
, jsoncpp
, pkg-config
, tclap
, yaml-cpp
, # helpers
  nix-gitignore
, stdenv
, # source
  smartvmi-source
}:
let
  pluginSrc = nix-gitignore.gitignoreSource [ ] (smartvmi-source + "/plugins/${name}");
  vmicoreSrc = nix-gitignore.gitignoreSource [ ] (smartvmi-source + "/vmicore");
in
stdenv.mkDerivation {
  name = "smartvmi-plugin-${name}";
  src = pluginSrc;

  cmakeFlags = [
    "-D VMICORE_DIRECTORY_ROOT=${vmicoreSrc}"
  ];

  buildInputs = [
    fmt.dev
    jsoncpp.dev
    tclap
    yaml-cpp
  ]
  ++ additionalDeps;

  nativeBuildInputs = [
    cmake
    pkg-config
  ];
}
