# nix/modules/home-manager.nix — auto-generated from thiserror.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.thiserror; in {
  options.programs.thiserror = {
    enable = lib.mkEnableOption "thiserror";
    package = lib.mkOption { type = lib.types.package; default = pkgs.thiserror or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
