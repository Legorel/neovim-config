local o = vim.o
local g = vim.g

-- Display
o.guifont = 'JetBrainsMono Nerd Font Mono:h12'
o.linespace = 1
--g.neovide_scale_factor = 0.9
--g.neovide_text_gamma = 0.0
--g.neovide_text_contrast = 0.5
--g.neovide_padding_*=
--g.neovide_transparency = 0.9
g.neovide_scroll_animation_length = 0.15
g.neovide_scroll_animation_far_lines = 5
g.neovide_hide_mouse_when_typing = true
--g.neovide_underline_stroke_scale = 0.9
g.neovide_theme = 'dark'

-- Functionality
g.neovide_refresh_rate = 75
g.neovide_refresh_rate_idle = 30
g.neovide_no_idle = false
g.neovide_confirm_quit = true
--g.neovide_detach_on_quit = 'prompt'
g.neovide_fullscreen = false
--g.neovide_remember_window_size = true
--g.neovide_profiler = false

-- Input settings
--g.neovide_touch_deadzone = 6.0
--g.neovide_touch_drag_timeout = 0.17

-- Cursor settings
g.neovide_cursor_animation_length = 0.1
g.neovide_cursor_trail_size = 0.2
g.neovide_cursor_antialiasing = false
g.neovide_cursor_animate_in_insert_mode = true
g.neovide_cursor_animate_command_line = true
g.neovide_cursor_unfocused_outline_width = 0.125
--g.neovide_cursor_smooth_blink = true
--g.neovide_cursor_vfx_mode = ''
--g.neovide_cursor_vfx_opacity = 200.0
--g.neovide_cursor_vfx_particle_lifetime = 1.2
--g.neovide_cursor_vfx_particle_density = 7.0
--g.neovide_cursor_vfx_particle_speed = 10.0
--g.neovide_cursor_vfx_particle_phase = 1.5
--g.neovide_cursor_vfx_particle_curl = 1.0
