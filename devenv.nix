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
    mold.enable = true;
    components = [
      "rustc"
      "cargo"
      "clippy"
      "rustfmt"
      "rust-analyzer"
      "llvm-tools-preview"
    ];
  };

  packages = with pkgs; [
    cargo-llvm-cov
    cargo-watch
    cargo-cache
    cargo-audit
    cargo-deny
    sqlx-cli
    openssl
  ];

  git-hooks.hooks = {
    typos.enable = true;
    conform.enable = true;
    actionlint.enable = true;
    clippy.enable = true;
    clippy.settings.allFeatures = true;
  };

  # See full reference at https://devenv.sh/reference/options/
}
