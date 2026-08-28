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
    channel = "nightly";
    mold.enable = true;
    components = [
      "rustc"
      "cargo"
      "rust-analyzer"
      "rustfmt"
      "clippy"
      "llvm-tools-preview"
    ];
  };

  packages = with pkgs; [
    bacon
    cargo-nextest
    cargo-llvm-cov
    cargo-cache
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

  scripts.watcher = {
    exec = ''
      watchexec -c -e rs \
      "cargo clippy && cargo test && cargo run"
    '';
    packages = [ pkgs.watchexec ];
  };

  # See full reference at https://devenv.sh/reference/options/
}
