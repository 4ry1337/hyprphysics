{
  pkgs,
  lib,
  config,
  inputs,
  ...
}:

{
  languages.rust = {
    enable = true;
    channel = "stable";
    toolchain.rustfmt = inputs.fenix.packages.${pkgs.system}.latest.rustfmt;
  };

  packages = [
    pkgs.cargo-cache
  ];

  git-hooks.hooks = {
    shellcheck.enable = true;
    clippy.enable = true;
    clippy.packageOverrides.cargo = pkgs.cargo;
    clippy.packageOverrides.clippy = pkgs.clippy;
    clippy.settings.allFeatures = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
