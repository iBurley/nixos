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
            dolphin.enable = true;
            fbneo.enable = true;
            gambatte.enable = true;
            genesis-plus-gx.enable = true;
            mesen.enable = true;
            mgba.enable = true;
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
            input_close_content_btn = "11"; # Start
            input_driver = "wayland";
            input_enable_hotkey_btn = "10"; # Select
            input_fps_toggle_btn = "3"; # Left Face
            input_load_state_btn = "6"; # Left Bumper
            input_max_users = "4";
            input_menu_toggle_btn = "4"; # Top Face
            input_save_state_btn = "7"; # Right Bumper
            input_toggle_fast_forward_axis = "+4"; # Right Trigger
            input_toggle_slowmotion_axis = "+5"; # Left Trigger
            menu_core_enable = "false";
            menu_left_thumbnails = "1";
            menu_show_dump_disc = "false";
            menu_show_help = "false";
            menu_show_latency = "false";
            menu_show_load_content = "false";
            menu_show_load_core = "false";
            menu_show_load_disc = "false";
            menu_show_overlays = "false";
            menu_show_rewind = "false";
            menu_timedate_style = "25";
            ozone_menu_color_theme = "11";
            ozone_sort_after_truncate_playlist_name = "true";
            ozone_thumbnail_scale_factor = "2";
            quick_menu_show_add_to_favorites = "false";
            quick_menu_show_cheats = "false";
            quick_menu_show_reset_core_association = "false";
            quick_menu_show_save_content_dir_overrides = "false";
            quick_menu_show_start_recording = "false";
            quick_menu_show_start_streaming = "false";
            quick_menu_show_take_screenshot = "false";
            quit_press_twice = "false";
            rgui_browser_directory = "/mnt/Games/RetroArch";
            savefile_directory = "/mnt/Games/RetroArch/saves";
            savestate_auto_load = "true";
            savestate_auto_save = "true";
            savestate_directory = "/mnt/Games/RetroArch/states";
            settings_show_accessibility = "false";
            settings_show_achievements = "false";
            settings_show_ai_service = "false";
            settings_show_directory = "false";
            settings_show_frame_throttle = "false";
            settings_show_latency = "false";
            settings_show_logging = "false";
            settings_show_network = "false";
            settings_show_onscreen_display = "false";
            settings_show_power_management = "false";
            settings_show_recording = "false";
            settings_show_user = "false";
            system_directory = "/mnt/Games/RetroArch/system";
            video_driver = "vulkan";
            video_fullscreen = "true";
            video_refresh_rate = "144";
          };
        };

      };

  };

}
