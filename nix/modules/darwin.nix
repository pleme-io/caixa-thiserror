# nix/modules/darwin.nix — auto-generated from thiserror.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.services.thiserror; in {
  options.services.thiserror = {
    enable = lib.mkEnableOption "thiserror";
    package = lib.mkOption { type = lib.types.package; default = pkgs.thiserror or null; };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
