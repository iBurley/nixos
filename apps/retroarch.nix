{
  config,
  lib,
  ...
}:

{

  options.apps.retroarch.enable = lib.mkEnableOption "RetroArch";

  config = lib.mkIf config.apps.retroarch.enable {

    home-manager.users.iburley =
      { ... }:

      {

        programs.retroarch = {
          enable = true;
          cores = {
            beetle-psx.enable = true;
            bsnes.enable = true;
            genesis-plus-gx.enable = true;
            mesen.enable = true;
            mupen64plus.enable = true;
            pcsx2.enable = true;
            stella.enable = true;
          };
          settings = {
            audio_driver = "pipewire";
            audio_volume = "-15";
            content_show_add_entry = "1";
            content_show_contentless_cores = "0";
            content_show_explore = "false";
            content_show_favorites = "false";
            content_show_images = "false";
            content_show_netplay = "false";
            content_show_video = "false";
            core_info_cache_enable = "false";
            input_driver = "wayland";
            menu_left_thumbnails = "1";
            menu_show_dump_disc = "false";
            menu_show_help = "false";
            menu_show_load_content = "false";
            menu_show_load_core = "false";
            menu_show_load_disc = "false";
            menu_timedate_style = "25";
            ozone_menu_color_theme = "11";
            ozone_sort_after_truncate_playlist_name = "true";
            quick_menu_show_add_to_favorites = "false";
            quick_menu_show_start_streaming = "false";
            rgui_browser_directory = "/mnt/Games/RetroArch";
            savefile_directory = "/mnt/Games/RetroArch/saves";
            savestate_directory = "/mnt/Games/RetroArch/states";
            video_driver = "vulkan";
            video_fullscreen = "true";
            video_refresh_rate = "144";
          };
        };

      };

  };

}
