{
  config,
  lib,
  pkgs,
  ...
}:

{

  options.apps.retroarch.enable = lib.mkEnableOption "RetroArch";

  config = lib.mkIf config.apps.retroarch.enable {

    environment.systemPackages = with pkgs; [
      (retroarch.withCores (
        cores: with cores; [
          beetle-psx
          bsnes
          mesen
          pcsx2
          stella
        ]
      ))
    ];

  };

}
